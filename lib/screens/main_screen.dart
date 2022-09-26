import 'package:flutter/material.dart';
import 'package:testflutter/screens/account_screen.dart';
import 'package:testflutter/screens/cart_screen.dart';
import 'package:testflutter/screens/messages_screen.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String id = "home-screen";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MessagesScreen(),
    CartScreen(),
    AccountScreen()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Poppins'
        ),
        elevation: 4,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex ==0? Icons.home:Icons.home_outlined),
            label: 'Home',
            //backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex==1?Icons.message:Icons.message_outlined),
            label: 'Messages',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 2?Icons.shopping_cart:Icons.shopping_cart_outlined),
            label: 'Cart',
            //backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 3? Icons.person:Icons.person_outlined),
            label: 'Account',
            //backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
