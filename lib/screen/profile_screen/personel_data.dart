import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonDataPage extends StatefulWidget {
  @override
  _PersonDataPageState createState() => _PersonDataPageState();
}

class _PersonDataPageState extends State<PersonDataPage> {
  String _firstName = "";
  String _lastName = "";
  String _birthDate = "";
  String _bloodType = "";
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _birthDateController = TextEditingController();
  TextEditingController _bloodTypeController = TextEditingController();
  List<String> _personDataList = [];

  @override
  void initState() {
    super.initState();
    // SharedPreferences'den kayıtlı verileri al
    _getSavedPersonData();
  }

  void _getSavedPersonData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? personDataList = prefs.getStringList('personDataList');
    if (personDataList != null) {
      setState(() {
        _personDataList = personDataList;
      });
    }
  }

  void _savePersonDataToSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _firstName = _firstNameController.text;
    _lastName = _lastNameController.text;
    _birthDate = _birthDateController.text;

    String personData = "Ad: $_firstName, Soyad: $_lastName, Doğum Tarihi: $_birthDate";
    _personDataList.add(personData);
    await prefs.setStringList('personDataList', _personDataList);
    _firstNameController.clear();
    _lastNameController.clear();
    _birthDateController.clear();
    setState(() {});
  }

  Widget _buildPersonDataList() {
    return Expanded(
      child: ListView.builder(
        itemCount: _personDataList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(_personDataList[index]),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  // Düzenleme işlemleri
                },
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kişisel Bilgiler'),
        backgroundColor: Color(0xFF800000),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          TextField(
          controller: _firstNameController,
          decoration: InputDecoration(labelText: 'Ad'),
        ),
        TextField(
          controller: _lastNameController,
          decoration: InputDecoration(labelText: 'Soyad'),
        ),
        TextField(
              controller: _birthDateController,
              decoration: InputDecoration(labelText: 'Doğum Tarihi'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Kaydet'),
              style: ElevatedButton.styleFrom(primary: Color(0xFF006400)),
              onPressed: _savePersonDataToSharedPreferences,
            ),
            Text(
              'Kaydedilen Bilgiler:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0),
            _buildPersonDataList(),
          ],
        ),
      ),
    );
  }
}