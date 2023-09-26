import 'package:flutter/material.dart';

class home_widget extends StatelessWidget {
  const home_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.south_america),
            color: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.local_fire_department,
                  color: Color.fromARGB(94, 138, 43, 43),
                )),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.messenger_outline_sharp),
              color: Colors.black,
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: axisDirectionToAxis(AxisDirection.right),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 35,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 35,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 35,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 35,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 35,
                  ), CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 35,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 35,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
