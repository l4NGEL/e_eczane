import 'package:flutter/material.dart';
import '../../model/pharmacies_on_duty_model.dart';

class NobetciEczanePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF800000),
        title: Text(
          'Nöbetçi Eczaneler',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
      body: ListView.builder(
        itemCount: eczaneList.length,
        itemBuilder: (context, index) {
          final EczaneModel eczane = eczaneList[index];

          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Text(
                    eczane.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  child: Text(
                    eczane.address,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  child: Text(
                    'Telefon: ${eczane.phone}',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  child: Text(
                    eczane.isOpen ? 'Açık' : 'Kapalı',
                    style: TextStyle(
                      fontSize: 16,
                      color: eczane.isOpen ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
