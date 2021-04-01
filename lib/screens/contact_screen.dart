import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/goto_url_widget.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final double _mapLatitude = 40.962184;
  final double _mapLongitude = 29.0739403;
  final double _mapZoom = 17.00;
  final urlPhone = 'tel:+902163555619';
  final urlMail = 'mailto:info@abilar.org';

  Completer<GoogleMapController> _mapCompleter =
      Completer<GoogleMapController>();

  Map<MarkerId, Marker> _mapMark = Map<MarkerId, Marker>();

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('İletişim'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: deviceHeight * 0.3,
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
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.home,
                      size: 60,
                      color: Colors.blue,
                    ),
                    Text(
                      'Suadiye Mah. Kazım Özalp Sok. NO:15 Kat:2 Şaşkınbakkal Kadıköy/İSTANBUL',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 50)),
                    TextButton(
                      onPressed: () => gotoUrl(urlPhone),
                      child: Icon(
                        FontAwesomeIcons.phone,
                        size: 60,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text('0216 355 56 19')
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 50)),
                    TextButton(
                      onPressed: () => gotoUrl(urlMail),
                      child: Icon(
                        FontAwesomeIcons.envelope,
                        size: 60,
                        color: Colors.blue,
                      ),
                    ),
                    Text('info@abilar.org')
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
