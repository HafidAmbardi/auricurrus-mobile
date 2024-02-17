import 'dart:convert';
import 'package:hafidomio_s_application2/pages/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

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
    extends ConsumerState<PlacesApiGoogleMapSearch> {
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
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      onModify();
    });
  }

  @override
  Widget build(BuildContext context) {
    final destination = ref.watch(destinationStateProvider);
    return Align(
      //align at the top center
      alignment: Alignment.topCenter,
      child: Container(
        // appropriate width
        width: 300,
        // appropriate height
        height: 300,

        color: Colors.transparent,
        child: Center(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: TextFormField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Enter a search term',
                      ),
                    ),
                  ),
                  Container(
                    // white background with half opacity
                    color: Colors.white.withOpacity(0.5),
                    height: 200,
                    child: ListView.builder(
                      itemCount: listForPlaces.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () async {
                            List<Location> location = await locationFromAddress(
                                listForPlaces[index]['description']);

                            ref.read(destinationStateProvider.notifier).state =
                                LatLng(location.last.latitude,
                                    location.last.longitude);
                            print(destination);
                          },
                          title: Text(listForPlaces[index]['description']),
                        );
                      },
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
