import 'dart:async';

import 'package:hafidomio_s_application2/pages/map/places_google_api.dart';
import 'package:hafidomio_s_application2/pages/consts/consts.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
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
  ConsumerState<MapPage> createState() => _MapPageState();
}

class _MapPageState extends ConsumerState<MapPage> {
  Location _locationController = new Location();
  final Completer<GoogleMapController> _mapController =
      Completer<GoogleMapController>();

  static const LatLng _pGooglePlex = LatLng(37.4223, -122.0848);
  LatLng? _currentP;

  Map<PolylineId, Polyline> polylines = {};

  void showOverlay(BuildContext context, LatLng destination) {
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 0,
        child: Container(
          child: Align(
            // custom alignment
            alignment: Alignment(0, 1),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineOnPrimaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "6 min (1.4 km)",
                      style: CustomTextStyles.headlineSmallOnError,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "Rute tercepat saat ini sesuai kondisi lalu lintas",
                      style: CustomTextStyles.bodyMediumOnError_1,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  CustomElevatedButton(
                    text: "Start",
                    margin: EdgeInsets.only(left: 1.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 10.h),
                      child: SvgPicture.asset(
                        ImageConstant.imgSave,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientIndigoAToPrimaryDecoration,
                    onPressed: () async {
                      if (_currentP != null && destination != null) {
                        String googleMapsUrl =
                            'google.navigation:q=${destination.latitude},${destination.longitude}&key=AIzaSyDFnxsNsRe9whZ2_nAVmV4GnaEty-BUogo';
                        if (await canLaunchUrl(Uri.parse(googleMapsUrl))) {
                          await launchUrl(Uri.parse(googleMapsUrl));
                        } else {
                          throw 'Could not launch $googleMapsUrl';
                        }
                      }
                    },
                  ),
                  SizedBox(height: 21.v),
                ],
              ),
            ),
          ),
          // ... your start button code here
        ),
      ),
    );

    Overlay.of(widget.overlayContext ?? context)?.insert(overlayEntry);
  }

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
      if (destination != null) {
        showOverlay(context, destination);
      }
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
              ? PlacesApiGoogleMapSearch()
              : Container(),
          // Start button

          Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                width: 50,
                height: 50,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.navigation_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      if (_currentP != null && destination != null) {
                        String googleMapsUrl =
                            'google.navigation:q=${destination.latitude},${destination.longitude}&key=AIzaSyDFnxsNsRe9whZ2_nAVmV4GnaEty-BUogo';
                        if (await canLaunchUrl(Uri.parse(googleMapsUrl))) {
                          await launchUrl(Uri.parse(googleMapsUrl));
                        } else {
                          throw 'Could not launch $googleMapsUrl';
                        }
                      }
                    },
                  ),
                ),
              ))
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
        });
      }
    });
  }

  Future<List<LatLng>> getPolylinePoints() async {
    final destination = ref.watch(destinationStateProvider);
    //final currentPosition = _currentP != null ? PointLatLng(_currentP!.latitude, _currentP!.longitude) : PointLatLng(0, 0),

    List<LatLng> polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    if (_currentP != null && destination != null) {
      // TODO add try catch
      PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
          GOOGLE_MAPS_API_KEY,
          // PointLatLng(_pGooglePlex.latitude, _pGooglePlex.longitude),

          PointLatLng(_currentP!.latitude, _currentP!.longitude),
          PointLatLng(destination.latitude, destination.longitude),
          // PointLatLng(destination!.latitude, destination!.longitude),
          // I can change the travel mode later
          travelMode: TravelMode.driving);

      if (result.points.isNotEmpty) {
        result.points.forEach((PointLatLng point) {
          polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        });
      } else {
        print(result.errorMessage);
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
