import 'package:flutter/material.dart';
import 'package:hallo_app/bottom_bar.dart';
import 'package:hallo_app/screen/course_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: "Hello", home: botton_bar());
  }
}
