// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  final caroselImages = [
    'assets/images/sliderimage.png',
    'assets/images/sliderimage.png',
    'assets/images/sliderimage.png',
    'assets/images/sliderimage.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/flag_america.png',
              )),
        ),
        actions: [
          Icon(
            Icons.local_fire_department_rounded,
            color: Colors.grey,
          ),
          Text(
            '3',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 20),
          Icon(
            Icons.messenger_outline_rounded,
            color: Colors.grey,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                CarouselSlider.builder(
                  itemCount: caroselImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final imagePath = caroselImages[index];
                    return buildImage(imagePath, index);
                  },
                  options: CarouselOptions(
                    height: 190,
                    autoPlay: true,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                builderIndicator()
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/flag_america.png'),
                          radius: 25,
                        ),
                      ),
                      Text(
                        'Adil',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/flag_america.png'),
                          radius: 25,
                        ),
                      ),
                      Text(
                        'Shabeer',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/flag_america.png'),
                          radius: 25,
                        ),
                      ),
                      Text(
                        'Aysha',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/flag_america.png'),
                          radius: 25,
                        ),
                      ),
                      Text(
                        'Rashiq',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/flag_america.png'),
                          radius: 25,
                        ),
                      ),
                      Text(
                        'Rahma',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/flag_america.png'),
                          radius: 25,
                        ),
                      ),
                      Text(
                        'John',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/flag_america.png'),
                          radius: 25,
                        ),
                      ),
                      Text(
                        'Akbar',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/flag_america.png'),
                          radius: 25,
                        ),
                      ),
                      Text(
                        'Roney',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset('assets/images/flag_america.png'),
                  title: Text(
                    'InstaLesson',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('1-on-1 Lesson with a native teacher'),
                  trailing: Text(
                    'Paid',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Image.asset('assets/images/flag_america.png'),
                  title: Text(
                    'InstaMatch',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Unlimited Practice with other students'),
                  trailing: Text(
                    'Free',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.filter_alt_outlined),
                    label: Text('Filter'),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.grey)),
                  ),
                  trailing: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.list_rounded),
                    label: Text('InstaLog'),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.grey)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35))),
                      fixedSize: MaterialStateProperty.all(Size(200, 50))),
                  child: Text("Start Instamatching"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget builderIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: caroselImages.length,
        effect: const WormEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: Colors.black,
          dotColor: Colors.grey,
        ),
      );

  Widget buildImage(String imagepath, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.grey,
        child: Image.asset(
          imagepath,
          fit: BoxFit.fill,
        ),
      );
}
