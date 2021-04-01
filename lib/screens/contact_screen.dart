import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final double _mapLatitude = 40.962184;
  final double _mapLongitude = 29.0739403;
  final double _mapZoom = 17.00;

  Completer<GoogleMapController> _mapCompleter =
      Completer<GoogleMapController>();

  Map<MarkerId, Marker> _mapMark = Map<MarkerId, Marker>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İletişim'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            child: GoogleMap(
              mapType: MapType.normal,
              markers: Set<Marker>.of(_mapMark.values),
              initialCameraPosition: CameraPosition(
                  target: LatLng(_mapLatitude, _mapLongitude), zoom: _mapZoom),
              onMapCreated: (GoogleMapController controller) {
                final markerId = MarkerId('merkez');
                final Marker mark = Marker(
                  markerId: markerId,
                  position: LatLng(_mapLatitude, _mapLongitude),
                  infoWindow: InfoWindow(
                      title: 'ABA',
                      snippet: 'Akademik Bilişim Araştırmaları Derneği',
                      onTap: () {
                        debugPrint('mark tıklanıldı.');
                      }),
                );
                _mapCompleter.complete(controller);
                _mapMark[markerId] = mark;
              },
            ),
          ),
        ],
      ),
    );
  }
}
