// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

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
                Divider(),
                sized(valueH: 1, valueW: 0),

                //-------------------------top bars-------------------------------//
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 35,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 222, 222, 222),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "All",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        sized(valueH: 0, valueW: 10),
                        Container(
                          height: 35,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 222, 222, 222),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Career Development",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        sized(valueH: 0, valueW: 10),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 222, 222, 222),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Dream Jobs",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        sized(valueH: 0, valueW: 10),
                        Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 222, 222, 222),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Lifestyle",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
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
                  child: Column(
                    children: [
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
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'B1-C2.8 Lessons',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      sized(valueH: 10, valueW: 0),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Learn how to become extraordinary and achieve more',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
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
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'A2-B2.8 Lessons',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      sized(valueH: 10, valueW: 0),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Learn how to become extraordinary and achieve more',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //----------------sizedbox method----------------//
  SizedBox sized({required double valueH, required double valueW}) {
    return SizedBox(
      height: valueH,
      width: valueW,
    );
  }
}
