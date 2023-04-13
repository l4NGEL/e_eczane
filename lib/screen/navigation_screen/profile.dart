import 'package:flutter/material.dart';
import '../login_page.dart';
import '../profile_screen/address_information.dart';
import '../profile_screen/blood_test_page.dart';
import '../profile_screen/hakkimizda.dart';
import '../profile_screen/last_drugs.dart';
import '../profile_screen/personel_data.dart';


class Profile extends StatelessWidget {
  final String email;

  Profile({required this.email});
  void _logout(BuildContext context) {
    // Burada uygulamadan çıkış işlemleri yapılacak
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context); // Geri düğmesi işlevselliği
          },
        ),
        title: Text(
          "Profil",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage:
                  AssetImage('assets/images/main.jpg'),
                ),
                Text(
                  email,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.medical_services_outlined),
            title: Text('Son Verilen İlaçlar'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LastDrugs()),
              );
            },
          ),
            ListTile(
            leading: Icon(Icons.location_on_outlined),
            title: Text('Kişisel Bilgiler'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonDataPage(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Hakkımızda'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HakkimizdaPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Adres Bilgisi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddressPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Çıkış Yap'),
            onTap: () => _logout(context),
          ),
        ],
      ),
    );
  }
}
