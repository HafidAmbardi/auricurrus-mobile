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

class PlacesApiGoogleMapSearch extends ConsumerStatefulWidget {
  const PlacesApiGoogleMapSearch({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PlacesApiGoogleMapSearchState();
}

final destinationStateProvider = StateProvider<LatLng?>((ref) {
  return null;
});

class _PlacesApiGoogleMapSearchState
    extends ConsumerState<PlacesApiGoogleMapSearch>
    with WidgetsBindingObserver {
  bool isTyping = false;
  String tokenForSession = '12345';
  // make destination a global variable

  var uuid = Uuid();

  List<dynamic> listForPlaces = [];

  final TextEditingController _controller = TextEditingController();
  void makeSuggestions(String input) async {
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
      });
    } else {
      throw Exception('Failed to load predictions');
    }
  }

  void onModify() {
    makeSuggestions(_controller.text);
    setState(() {
      isTyping = _controller.text.isNotEmpty; // Update this line
    });
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
                                print(destination);

                                FocusScope.of(context)
                                    .unfocus(); // Add this line
                                setState(() {
                                  isTyping = false; // Add this line
                                });
                              },
                              title: Text(listForPlaces[index]['description']),
                            );
                          },
                        ),
                      )),
                ])));
  }
}
