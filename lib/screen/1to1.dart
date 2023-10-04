// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class OneToOneScreen extends StatefulWidget {
  const OneToOneScreen({super.key});

  @override
  State<OneToOneScreen> createState() => _OneToOneScreenState();
}

class _OneToOneScreenState extends State<OneToOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              ' New Teachers',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              teachersList(
                  image: "assets/images/vanessa.jpeg", text: 'Vanessa'),
              teachersList(image: "assets/images/troy.jpeg", text: 'Troy'),
              teachersList(image: "assets/images/ben.jpeg", text: 'Ben'),
              teachersList(image: "assets/images/aradhi.jpg", text: 'Aradhi'),
              teachersList(image: "assets/images/adam.jpeg", text: 'Adam'),
              teachersList(image: "assets/images/july.webp", text: 'July'),
              teachersList(image: "assets/images/sebe.jpg", text: 'Sebe'),
              teachersList(
                  image: "assets/images/petricia.jpg", text: 'Petrecia'),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    listview(
                        image1: 'assets/images/july.webp',
                        image2: 'assets/images/canadaflag.jpeg',
                        text1: 'July',
                        text2: '     4.98(115)',
                        text3:
                            'Hi, i earned my Bachelor of Science in Business Management before raising four childern.\n Education is the important and powerful tool to change the world.'),
                    Divider(),
                    listview(
                      image1: 'assets/images/sebe.jpg',
                      image2: 'assets/images/flag_america.png',
                      text1: 'Sebe',
                      text2: '     4.78(188)',
                      text3:
                          'Its nice to meet you! My name is T.sebe I am a good listener with great communication skills.\n I have 2 years teaching expirience. i have better skilss in different area.',
                    ),
                    Divider(),
                    listview(
                      image1: 'assets/images/petricia.jpg',
                      image2: 'assets/images/flag_america.png',
                      text1: '      Patricia',
                      text2: '     4.98s',
                      text3:
                          'Hi, iam Pratrica and i am a certified TEFL teacher,i hold a international level certificate of be3st teacher excellence award.',
                    ),
                    Divider(),
                    listview(
                      image1: 'assets/images/anitha.jpg',
                      image2: 'assets/images/flag_america.png',
                      text1: '      Aradhi',
                      text2: '     4.98s',
                      text3:
                          'Hi, iam Anitha and i am a certified TEFL teacher,i hold a international level certificate of be3st teacher excellence award.',
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column teachersList({
    String? image,
    String? text,
  }) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundImage: AssetImage(image!),
            radius: 30,
          ),
        ),
        SizedBox(height: 3),
        Text(
          text!,
          style: TextStyle(
              fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Container listview(
      {required String image1,
      String? image2,
      String? text1,
      String? text2,
      String? text3}) {
    return Container(
      child: Column(
        children: [
          Container(),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image1),
                radius: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Image.asset(
                  image2!,
                  height: 30,
                  width: 30,
                ),
              ),
              Column(
                children: [
                  Container(
                      child: Text(
                    text1!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Text(text2!)
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(alignment: Alignment.topLeft, child: Text(text3!))
        ],
      ),
    );
  }
}
