import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Cart.dart';
import 'Home Page.dart';
import 'Profile.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _Index=0;
  final List<Widget> widgetOptions =  <Widget> [
    Cart(),
    Home(),
    Profile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _Index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:widgetOptions.elementAt(_Index),
      ),
      bottomNavigationBar: Container(decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 10,)
        ],
      ),
        child: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
            child: BottomNavigationBar(
              selectedItemColor: Colors.deepOrangeAccent,
              unselectedItemColor: Colors.grey[500],
              currentIndex: _Index,
              elevation: 20.0,
              items:[
                BottomNavigationBarItem(icon:Icon(Icons.shopping_cart_outlined), label: '',),
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: ''),

              ],
              onTap: _onItemTapped,
            )

        ),
      ),);
  }
}