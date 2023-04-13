import 'package:flutter/material.dart';

class BloodTestScreen extends StatefulWidget {
  final String personName;

  BloodTestScreen({required this.personName});

  @override
  _BloodTestScreenState createState() => _BloodTestScreenState();
}

class _BloodTestScreenState extends State<BloodTestScreen> {
  // örnek veriler
  final List<Map<String, dynamic>> _testResults = [
    {'date': DateTime(2022, 1, 1), 'name': 'Hemoglobin', 'value': '14.5', 'unit': 'g/dL'},
    {'date': DateTime(2022, 1, 1), 'name': 'Glukoz', 'value': '110', 'unit': 'mg/dL'},
    {'date': DateTime(2022, 1, 1), 'name': 'LDL Kolesterol', 'value': '120', 'unit': 'mg/dL'},
    {'date': DateTime(2022, 1, 1), 'name': 'HDL Kolesterol', 'value': '50', 'unit': 'mg/dL'},
    {'date': DateTime(2022, 1, 1), 'name': 'Trigliserid', 'value': '150', 'unit': 'mg/dL'},
    {'date': DateTime(2022, 2, 1), 'name': 'Hemoglobin', 'value': '14.2', 'unit': 'g/dL'},
    {'date': DateTime(2022, 2, 1), 'name': 'Glukoz', 'value': '100', 'unit': 'mg/dL'},
    {'date': DateTime(2022, 2, 1), 'name': 'LDL Kolesterol', 'value': '125', 'unit': 'mg/dL'},
    {'date': DateTime(2022, 2, 1), 'name': 'HDL Kolesterol', 'value': '55', 'unit': 'mg/dL'},
    {'date': DateTime(2022, 2, 1), 'name': 'Trigliserid', 'value': '135', 'unit': 'mg/dL'},
    {'date': DateTime(2022, 3, 1), 'name': 'Hemoglobin', 'value': '13.9', 'unit': 'g/dL'},
    {'date': DateTime(2022, 3, 1), 'name': 'Glukoz', 'value': '120', 'unit': 'mg/dL'},
    {'date': DateTime(2022, 3, 1), 'name': 'LDL Kolesterol', 'value': '130', 'unit': 'mg/dL'},
    {'date': DateTime(2022, 3, 1), 'name': 'HDL Kolesterol', 'value': '60', 'unit': 'mg/dL'},
    {'date': DateTime(2022, 3, 1), 'name': 'Trigliserid', 'value': '145', 'unit': 'mg/dL'},
  ];
  // tarihler
  List<DateTime> _dates = [    DateTime(2022, 1, 1),    DateTime(2022, 2, 1),    DateTime(2022, 3, 1),  ];

// açılıp açılmadığını tutan değişkenler
  Map<DateTime, bool> _isOpen = {
    DateTime(2022, 1, 1): false,
    DateTime(2022, 2, 1): false,
    DateTime(2022, 3, 1): false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context); // Geri düğmesi işlevselliği
          },
        ),
        title: Text(
          "KAN TAHLİLLERİ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xFF800000),
      ),
      body: ListView.builder(
        itemCount: _dates.length,
        itemBuilder: (context, index) {
          // tarihin sonucunu filtrele
          final results = _testResults.where((result) {
            return result['date'] == _dates[index];
          }).toList();

          // ExpansionTile oluştur
          return Card(
            color: Colors.grey[350],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(10),
            child: ExpansionTile(
              title: Text(
                _dates[index].toString(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onExpansionChanged: (isExpanded) {
                setState(() {
                  _isOpen[_dates[index]] = isExpanded;
                });
              },
              children: <Widget>[
                if (_isOpen[_dates[index]] ??
                    false) // genişlemişse sonuçları göster
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: results.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(results[index]['name']),
                        trailing: Text(
                          results[index]['value'] +
                              ' ' +
                              results[index]['unit'],
                        ),
                      );
                    },
                  ),
              ],
            ),
          );
        },
      ),
    );
  }}
