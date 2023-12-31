// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hallo_app/screen/1to1.dart';
import 'package:hallo_app/screen/group_screen.dart';

class ExploreSCreen extends StatelessWidget {
  const ExploreSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              Container(
                //-------------search bar--------------------//
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 240, 228, 228),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'search',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
              ),

              //-------------search bar--------------------//
              SizedBox(
                height: 5,
              ),

              //-------------Tab bar--------------------//
              TabBar(
                labelColor: const Color.fromARGB(255, 255, 0, 0),
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: const Color.fromARGB(255, 0, 0, 0),
                tabs: [
                  Tab(
                    text: 'Group',
                  ),
                  Tab(
                    text: '1-to-1',
                  )
                ],
              ),
              Expanded(
                child: TabBarView(children: [GroupScreen(), OneToOneScreen()]),
              )
            ],

            //-------------Tab bar--------------------//
          )),
        ));
  }
}
