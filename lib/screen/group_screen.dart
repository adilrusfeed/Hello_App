// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              //--------------------dropdownlist----------------------------//
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 217, 196, 196),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 35,
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Time',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 196, 196),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 35,
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Level',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 217, 196, 196),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 35,
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Topic',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              //--------------------dropdownlist----------------------------//
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: [
                  Image.asset('assets/images/interview.jpg'),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Interview Preparation',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child:
                        Text('4.16(6)', style: TextStyle(color: Colors.grey)),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Mon at 2.30 pm. Work. B1',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/john.jpg'),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Brenda',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.star_outline_rounded),
                              Icon(Icons.more_vert_rounded)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Image.asset('assets/images/interview2.jpeg'),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Peer Learning',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    '4.16(6)  ',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Mon at 2:30 PM. Work. B1',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/john.jpg'),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Susan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.star_outline_rounded),
                            Icon(Icons.more_vert_rounded)
                          ],
                        ),
                      )
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
}
