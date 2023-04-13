import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const MyBottomNavigationBar({Key? key, required this.selectedIndex, required this.onItemTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.red,
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.red,
          icon: Icon(Icons.article),
          label: 'News',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.red,
          icon: Icon(Icons.local_pharmacy),
          label: 'Pharmacy',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.red,
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white,
      onTap: onItemTapped,
    );
  }
}
