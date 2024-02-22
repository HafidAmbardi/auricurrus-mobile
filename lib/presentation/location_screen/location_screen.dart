import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:hafidomio_s_application2/widgets/custom_floating_button.dart';
import 'package:hafidomio_s_application2/pages/map/map_page.dart';
import 'package:hafidomio_s_application2/pages/audio/audio_recorder.dart';
import 'package:flutter/foundation.dart';

class LocationScreen extends StatelessWidget {
  final BuildContext? overlayContext;
  LocationScreen({this.overlayContext, Key? key})
      : super(
          key: key,
        );
  bool showPlayer = false;
  String? audioPath;
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      MapPage(
        overlayContext: overlayContext,
        showPlacesApiGoogleMapSearch: true,
      ),
    ]);
  }

  /// Section Widget
  Widget _buildLocationMap(BuildContext context) {
    return SizedBox(
      height: 715.v,
      width: 325.h,
      child: Stack(children: [
        GoogleMap(
          //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: LatLng(
              37.43296265331129,
              -122.08832357078792,
            ),
            zoom: 14.4746,
          ),
          onMapCreated: (GoogleMapController controller) {
            googleMapController.complete(controller);
          },
          zoomControlsEnabled: false,
          zoomGesturesEnabled: false,
          myLocationButtonEnabled: false,
          myLocationEnabled: false,
        ),
      ]),
    );
  }
}
