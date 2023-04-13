import 'package:flutter/material.dart';
import '../screen/splach_screen/baby_care_page.dart';
import '../screen/splach_screen/cosmetic_page.dart';
import '../screen/splach_screen/health_product_page.dart';
import '../screen/splach_screen/medical_equipment.dart';
import '../screen/splach_screen/medical_page.dart';
import '../screen/splach_screen/personel_care.dart';


class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Kategoriler'),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.black,
            ),
            title: Text('İlaçlar'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MedicinePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.black,
            ),
            title: Text('Kozmetik Ürünler'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CosmeticPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.black,
            ),
            title: Text('Kişisel Bakım'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonelCarePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.black,
            ),
            title: Text('Tıbbi Malzemeler'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MedicalEquipmentPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.black,
            ),
            title: Text('Sağlık Ürünleri'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HealthProductsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.black,
            ),
            title: Text('Bebek Bakım Ürünleri'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BabyCarePage()),
              );
            },
          ),
        ],
      ),
    );
  }}
