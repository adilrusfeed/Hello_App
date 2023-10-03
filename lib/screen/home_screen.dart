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

      //----------------------appbar-------------------------------//
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
      //----------------------appbar-------------------------------//
      body: SingleChildScrollView(
        child: Column(
          children: [
            sized(30),
            Column(
              children: [
                //-----------------------carousel image-----------------------//
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
                sized(20),
                builderIndicator()
              ],
            ),
            //-----------------------carousel image-----------------------//
            sized(20),
            SizedBox(
              height: 100,
              //-------------------------circle avatar----------------------//
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  circleavatar(
                      image: "assets/images/adilpic.png", name: "Adil"),
                  circleavatar(
                      image: "assets/images/shabeer.png", name: "Shabeer"),
                  circleavatar(image: "assets/images/aysha.jpg", name: "Aysha"),
                  circleavatar(
                      image: "assets/images/rashiq.jpg", name: "Rashiq"),
                  circleavatar(image: "assets/images/rahma.jpg", name: "Rahma"),
                  circleavatar(image: "assets/images/john.jpg", name: "John"),
                  circleavatar(image: "assets/images/akbar.jpg", name: "Akbar"),
                  circleavatar(
                      image: "assets/images/anitha.jpg", name: "Anitha"),
                ],
              ),
              //-------------------------circle avatar----------------------//
            ),
            sized(20),
            //---------------------------customercare--------------------------//
            Column(
              children: [
                ListTile(
                  leading: Image.asset('assets/images/interview.jpg'),
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
                sized(5),
                ListTile(
                  leading: Image.asset('assets/images/interview2.jpeg'),
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
                sized(10),
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
                //---------------------------customercare--------------------------//
                sized(10),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35))),
                      fixedSize: MaterialStateProperty.all(Size(200, 50))),
                  child: Text("Start Instamatching"),
                ),
                //---------------------------customercare--------------------------//
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox sized(double value) {
    return SizedBox(
      height: value,
    );
  }

  Column circleavatar({required String image, required String name}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 25,
          ),
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 13,
            color: Colors.black,
          ),
        )
      ],
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
