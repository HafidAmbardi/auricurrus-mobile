import 'dart:async';

import 'package:hafidomio_s_application2/pages/map/places_google_api.dart';
import 'package:hafidomio_s_application2/pages/consts/consts.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapPage extends ConsumerStatefulWidget {
  final bool showPlacesApiGoogleMapSearch;
  final BuildContext? overlayContext;

  const MapPage(
      {this.overlayContext,
      this.showPlacesApiGoogleMapSearch = true,
      super.key});

  @override
  ConsumerState<MapPage> createState() =>
      _MapPageState(overlayContext: overlayContext);
}

final currentStateProvider = StateProvider<LatLng?>((ref) {
  return null;
});

class _MapPageState extends ConsumerState<MapPage> {
  final BuildContext? overlayContext;
  _MapPageState({this.overlayContext});

  Location _locationController = new Location();
  final Completer<GoogleMapController> _mapController =
      Completer<GoogleMapController>();

  static const LatLng _pGooglePlex = LatLng(37.4223, -122.0848);
  LatLng? _currentP;

  Map<PolylineId, Polyline> polylines = {};
  OverlayEntry? overlayEntry;
  final currentPProvider = StateProvider<LatLng?>((ref) => null);
  Set<Marker> markers = {};
  @override
  void initState() {
    super.initState();
    getLocationUpdates().then((_) => {
          getPolylinePoints().then((coordinates) => {
                generatePolyLineFromPoints(coordinates),
              })
        });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final destination = ref.watch(destinationStateProvider);
      // if (destination != null) {
      //   showOverlay(context, destination);
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    final destination = ref.watch(destinationStateProvider);

    if (destination != null) {
      markers.add(
        Marker(
          markerId: const MarkerId('_destinationLocation'),
          position: destination,
        ),
      );
      getPolylinePoints().then((coordinates) => {
            generatePolyLineFromPoints(coordinates),
          });
    }
    if (_currentP != null) {
      markers.add(
        Marker(
          markerId: const MarkerId('_currentLocation'),
          position: _currentP!,
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          if (_currentP == null)
            const Center(
              child: Text("Waiting for your location..."),
            )
          else
            GoogleMap(
              onMapCreated: ((GoogleMapController controller) =>
                  _mapController.complete(controller)),
              initialCameraPosition: const CameraPosition(
                target: _pGooglePlex,
                zoom: 13,
              ),
              markers: markers,
              polylines: Set<Polyline>.of(polylines.values),
            ),
          widget.showPlacesApiGoogleMapSearch
              ? PlacesApiGoogleMapSearch(
                  currentLocation: _currentP, overlayContext: overlayContext)
              : Container(),
        ],
      ),
    );
  }

  Future<void> _cameraToPosition(LatLng pos) async {
    final GoogleMapController controller = await _mapController.future;
    CameraPosition _newCameraPosition = CameraPosition(
      target: pos,
      zoom: 13,
    );
    await controller.animateCamera(
      CameraUpdate.newCameraPosition(_newCameraPosition),
    );
  }

  Future<void> getLocationUpdates() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await _locationController.serviceEnabled();
    if (_serviceEnabled) {
      _serviceEnabled = await _locationController.requestService();
    } else {
      return;
    }

    _permissionGranted = await _locationController.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _locationController.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationController.onLocationChanged
        .listen((LocationData currentLocation) {
      if (currentLocation.latitude != null &&
          currentLocation.longitude != null) {
        setState(() {
          _currentP =
              LatLng(currentLocation.latitude!, currentLocation.longitude!);
          print(_currentP);
          _cameraToPosition(_currentP!);
          ref.read(currentStateProvider.notifier).state =
              LatLng(currentLocation.latitude!, currentLocation.longitude!);
        });
      }
    });
  }

  Map<String, List<LatLng>> _cache = {};

  Future<List<LatLng>> getPolylinePoints() async {
    final destination = ref.watch(destinationStateProvider);

    List<LatLng> polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    if (_currentP != null && destination != null) {
      String cacheKey =
          "${_currentP!.latitude},${_currentP!.longitude},${destination.latitude},${destination.longitude}";
      if (_cache.containsKey(cacheKey)) {
        print(
            "Cache hit for key search: $cacheKey"); // Debugging print statement
        return _cache[cacheKey]!;
      } else {
        print(
            "Cache miss for key search: $cacheKey"); // Debugging print statement
        PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
            GOOGLE_MAPS_API_KEY,
            PointLatLng(_currentP!.latitude, _currentP!.longitude),
            PointLatLng(destination.latitude, destination.longitude),
            travelMode: TravelMode.driving);

        if (result.points.isNotEmpty) {
          result.points.forEach((PointLatLng point) {
            polylineCoordinates.add(LatLng(point.latitude, point.longitude));
          });
          _cache[cacheKey] = polylineCoordinates;
        } else {
          print(result.errorMessage);
        }
      }
    }
    return polylineCoordinates;
  }

  void generatePolyLineFromPoints(List<LatLng> polylineCoordinates) async {
    // if I have many then I need distinct ID's
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id,
        color: Colors.red,
        points: polylineCoordinates,
        width: 5);
    setState(() {
      polylines[id] = polyline;
    });
  }
}
