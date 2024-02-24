import 'dart:convert';
import 'package:hafidomio_s_application2/pages/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hafidomio_s_application2/core/app_export.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hafidomio_s_application2/widgets/custom_elevated_button.dart';
import 'package:hafidomio_s_application2/pages/map/map_page.dart';
import 'package:hafidomio_s_application2/pages/audio/audio_recorder.dart';
import 'package:flutter/foundation.dart';
// import consts.dart
import 'package:hafidomio_s_application2/pages/consts/consts.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;


class PlacesApiGoogleMapSearch extends ConsumerStatefulWidget {
  final BuildContext? overlayContext;
  final LatLng? currentLocation;

  const PlacesApiGoogleMapSearch(
      {this.currentLocation, this.overlayContext, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PlacesApiGoogleMapSearchState(
          currentLocation: currentLocation, overlayContext: overlayContext);
}

final destinationStateProvider = StateProvider<LatLng?>((ref) {
  return null;
});
final isStartedStateProvider = StateProvider<bool>((ref) {
  return false;
});

class _PlacesApiGoogleMapSearchState
    extends ConsumerState<PlacesApiGoogleMapSearch>
    with WidgetsBindingObserver {
  final BuildContext? overlayContext;
  final LatLng? currentLocation;

  _PlacesApiGoogleMapSearchState({this.currentLocation, this.overlayContext});
  bool showPlayer = false;
  String? audioPath;
  bool isTyping = false;
  String tokenForSession = '12345';
  // make destination a global variable

  var uuid = Uuid();

  List<dynamic> listForPlaces = [];

  final TextEditingController _controller = TextEditingController();
  Map<String, dynamic> _cache = {};

  void makeSuggestions(String input) async {
    if (_cache.containsKey(input)) {
      print("Cache hit for input: $input");
      setState(() {
        listForPlaces = _cache[input];
      });
    } else {
      print("Cache miss for input: $input");
      String googlePlacesApiKey = GOOGLE_MAPS_API_KEY;
      String groundURL =
          'https://maps.googleapis.com/maps/api/place/autocomplete/json';
      String request =
          '$groundURL?input=$input&key=$googlePlacesApiKey&sessiontoken=$tokenForSession';

      var responseResult = await http.get(Uri.parse(request));

      var resultData = responseResult.body.toString();

      print('Result Data');
      print(resultData);

      if (responseResult.statusCode == 200) {
        setState(() {
          listForPlaces =
              jsonDecode(responseResult.body.toString())['predictions'];
          _cache[input] = listForPlaces;
        });
      } else {
        throw Exception('Failed to load predictions');
      }
    }
  }

  void onModify() {
    makeSuggestions(_controller.text);
    setState(() {
      isTyping = _controller.text.isNotEmpty; // Update this line
    });
  }

  OverlayEntry? overlayEntry;

  void showOverlay(BuildContext context, LatLng? destination, LatLng? current,
      bool isStarted) {
    print("hee hee haa haa");
    overlayEntry?.remove();
    overlayEntry = OverlayEntry(
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
                      "Fastest route considering traffic conditions",
                      style: CustomTextStyles.bodyMediumOnError_1,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  CustomElevatedButton(
                    text: isStarted ? "Finish" : "Start",
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
                      // print destination with the format "This is the destination:"
                      print("This is the destination: $current");
                      if (!isStarted) {
                        // Add this condition
                        if (current != null && destination != null) {
                          String googleMapsUrl =
                              'google.navigation:q=${destination.latitude},${destination.longitude}&key=${GOOGLE_MAPS_API_KEY}';
                          if (await canLaunchUrl(Uri.parse(googleMapsUrl))) {
                            await launchUrl(Uri.parse(googleMapsUrl));
                          } else {
                            throw 'Could not launch $googleMapsUrl';
                          }
                        }
                        setState(() {
                          isStarted = true;
                          ref.read(isStartedStateProvider.notifier).state =
                              true;
                        });
                        showOverlay(context, destination, current, isStarted);
                      } else {
                        overlayEntry?.remove();
                        overlayEntry = null;
                        setState(() {
                          isStarted = false; // Add this line
                          ref.read(isStartedStateProvider.notifier).state =
                              false;
                        });
                      }
                    },
                  ),
                  SizedBox(height: 21.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    Overlay.of(widget.overlayContext ?? context)?.insert(overlayEntry!);
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(onModify);
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    final bottomInset = WidgetsBinding.instance!.window.viewInsets.bottom;
    final newValue = bottomInset > 0.0;
    if (newValue != isTyping) {
      setState(() {
        isTyping = newValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final destination = ref.watch(destinationStateProvider);
    final current = ref.watch(currentStateProvider);
    final isStarted = ref.watch(isStartedStateProvider);

    return Center(
      child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter a search term',
                      hintStyle: CustomTextStyles.bodyLargeOnError,
                      prefixIcon: Container(
                        margin: EdgeInsets.fromLTRB(21.h, 22.v, 29.h, 23.v),
                        child: SvgPicture.asset(
                          ImageConstant.imgSearchPrimarycontainer,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                        ),
                      ),
                      prefixIconConstraints: BoxConstraints(
                        maxHeight: 75.v,
                      ),
                      suffixIcon: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 22.v, 19.h, 23.v),
                        child: SvgPicture.asset(
                          ImageConstant.imgCloseOnerror,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                        ),
                      ),
                      suffixIconConstraints: BoxConstraints(
                        maxHeight: 75.v,
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 26.v),
                      fillColor:
                          theme.colorScheme.onErrorContainer.withOpacity(1),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.h),
                        borderSide: BorderSide(
                          color: appTheme.gray300,
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.h),
                        borderSide: BorderSide(
                          color: appTheme.gray300,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.h),
                        borderSide: BorderSide(
                          color: appTheme.gray300,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                // Suggestions
                Visibility(
                    visible: isTyping,
                    child: Container(
                      // white background with half opacity
                      color: Colors.white.withOpacity(1),
                      height: 200,
                      child: ListView.builder(
                        itemCount: listForPlaces.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () async {
                              List<Location> location =
                                  await locationFromAddress(
                                      listForPlaces[index]['description']);

                              ref
                                      .read(destinationStateProvider.notifier)
                                      .state =
                                  LatLng(location.last.latitude,
                                      location.last.longitude);
                              print("this is the destionation $location");
                              LatLng wawawa = LatLng(location.last.latitude,
                                  location.last.longitude);
                              showOverlay(context, wawawa, current, isStarted);

                              FocusScope.of(context).unfocus(); // Add this line
                              setState(() {
                                isTyping = false; // Add this line
                              });
                            },
                            title: Text(listForPlaces[index]['description']),
                          );
                        },
                      ),
                    )),
                Recorder(
                  onStop: (path) {
                    if (kDebugMode) print('Recorded file path: $path');

                    audioPath = path;
                    showPlayer = true;
                  },
                ),
              ])),
    );
  }
}
