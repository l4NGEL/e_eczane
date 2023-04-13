import 'package:flutter/material.dart';
import 'home_screen/cart_page.dart';
import 'home_screen/favorite.dart';
import 'home_screen/pharmacies_nearby.dart';
import '../widget/drawer_widget.dart';
import 'home_screen/Health_history_page.dart';
import 'home_screen/code_page.dart';
import 'navigation_screen/news.dart';
import 'navigation_screen/nobetci_eczane.dart';
import 'navigation_screen/profile.dart';
import 'profile_screen/blood_test_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    NewsPage(),
    NobetciEczanePage(),
    Profile(email: '',)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [

            Spacer(),
            CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage('assets/images/main.jpg'),
            ),
          ],
        ),
        backgroundColor: Color(0xFF800000),
        elevation: 0,
      ),

      drawer: DrawerWidget(),
    body: SingleChildScrollView(
      child:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 100), // Araya boşluk ekleyelim
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FavoriUrunler()),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/star.png',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BloodTestScreen(personName: '',)),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/file.png',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => pharmaciesNearbyPage()),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/location (1).png',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartPage()),
                      );
                    },
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/shopping-cart.png',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.transparent,
                      width: 2,
                    ),
                  ),
                  constraints: BoxConstraints(
                    maxWidth: 400,
                  ),
                  child: Image(
                    image: AssetImage('assets/images/isim.png'),
                  ),
                ),
              ),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              SizedBox(height:230), // Araya boşluk ekleyelim
            Container(
              height: 190,
              width: 190,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HealthHistoryCard()),
                    );
                  },
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/saglik_gecmisi.png',
                        height: 200,
                        width: 200,
                        fit: BoxFit.fitWidth,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 190,
              width: 190,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CodePage()),
                    );
                  },
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/recete.png',
                        height: 190,
                        width: 190,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],),]
      ),

    ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF800000),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF800000),
            icon: Icon(Icons.article),
            label: 'News',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF800000),
            icon: Icon(Icons.local_pharmacy),
            label: 'Pharmacy',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF800000),
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });

          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewsPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NobetciEczanePage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile(email: '',)),
            );
          }
        },
      ),
    );
  }
}