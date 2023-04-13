import 'package:flutter/material.dart';

class pharmaciesNearbyPage extends StatefulWidget {
  @override
  _pharmaciesNearbyPageState createState() => _pharmaciesNearbyPageState();
}

class _pharmaciesNearbyPageState extends State<pharmaciesNearbyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF800000),
            title: Text('YAKINIMDAKİ ECZANELER'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: Text(
                'ÇEVRENİZDEKİ ECZANELER GÖRECEĞİNİZ BU SAYFA ÇOK YAKINDA GÜNCELLENECEKTİR',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ));
  }
}