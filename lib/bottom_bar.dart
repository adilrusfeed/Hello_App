// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class botton_bar extends StatefulWidget {
  void Function(int)? onTabhange;
  botton_bar({super.key});

  @override
  State<botton_bar> createState() => _botton_barState();
}

class _botton_barState extends State<botton_bar> {
  int _clickedIndex = 0;

  void navigateBottombar(int index) {
    setState(() {
      _clickedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//-----------------bottombar details-------------------------------//
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _clickedIndex,
          onTap: navigateBottombar,
          type: BottomNavigationBarType.fixed,
          items: [
//-----------------------bottom bar icons---------------------------//
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: "course",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "profile",
            ),
            //-----------------------bottom bar icons---------------------------//
          ]),
    );
  }
}
