// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isTapped1 = false;
  bool isTapped2 = false;
  bool isTapped3 = false;
  bool isTapped4 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Courses',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              sized(valueH: 1, valueW: 0),

              //-------------------------top bars-------------------------------//
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTapped1 = !isTapped1;
                          });
                        },
                        child: Container(
                          height: 35,
                          width: 45,
                          decoration: BoxDecoration(
                            color: isTapped1
                                ? Colors.black
                                : Color.fromARGB(255, 222, 222, 222),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "All",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color:
                                      isTapped1 ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      sized(valueH: 0, valueW: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTapped2 = !isTapped2;
                          });
                        },
                        child: Container(
                          height: 35,
                          width: 180,
                          decoration: BoxDecoration(
                            color: isTapped2
                                ? Colors.black
                                : Color.fromARGB(255, 222, 222, 222),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Carrer Devolopment",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color:
                                      isTapped2 ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      sized(valueH: 0, valueW: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTapped3 = !isTapped3;
                          });
                        },
                        child: Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: isTapped3
                                ? Colors.black
                                : Color.fromARGB(255, 222, 222, 222),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Dream Jobs",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color:
                                      isTapped3 ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                      ),
                      sized(valueH: 0, valueW: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTapped4 = !isTapped4;
                          });
                        },
                        child: Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            color: isTapped4
                                ? Colors.black
                                : Color.fromARGB(255, 222, 222, 222),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Life Style",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color:
                                      isTapped4 ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //------------------------------top bars-------------------------------//
              sized(valueH: 10, valueW: 0),
              //-----------------------------img------------------------------------//
              SingleChildScrollView(
                child: Column(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/images/courseimg1.png',
                    ),
                  ),
                  sized(valueH: 10, valueW: 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How to be in the Top 1% at work',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'B1-C2.8 Lessons',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  sized(valueH: 10, valueW: 0),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Learn how to become extraordinary and achive more',
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                  sized(valueH: 50, valueW: 0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'assets/images/courseimg2.png',
                    ),
                  ),
                  sized(valueH: 10, valueW: 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Around the World I',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'A2-B2.8 Lessons',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  sized(valueH: 10, valueW: 0),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Learn how to become extraordinary and achive more',
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ]),
              )
            ],
          ),
        )
      ],
    ));
  }

//----------------sizedbox method----------------//
  SizedBox sized({required double valueH, required double valueW}) {
    return SizedBox(
      height: valueH,
      width: valueW,
    );
  }
}
