// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:hallo_app/screen/course_screen.dart';
import 'package:hallo_app/screen/explore_screen.dart';
import 'package:hallo_app/screen/home_screen.dart';
import 'package:hallo_app/screen/profile_screen.dart';

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

  final pages = [
    HomeScreen(),
    CourseScreen(),
    ExploreSCreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_clickedIndex],
//-----------------bottom bar details-------------------------------//
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
              icon: Icon(Icons.menu_book),
              label: "course",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "search",
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
