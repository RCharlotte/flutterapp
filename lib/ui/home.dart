import 'package:flutter/material.dart';
import 'package:flutterapp/ui/GradientText.dart';
import 'package:get/get.dart';

import 'dashboard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var logo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Container(

        width: Get.size.width,
        height: Get.size.height,
        padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.black,
                      Colors.black,
                    ],
                  )
              ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 15),
            Container(
              height: Get.size.height * .18,
              width: Get.size.height * .18,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo-IMA.png'),
                      fit: BoxFit.cover)),
            ),
            //SizedBox(height: 10),
            Center(
              child: Text("Intelligent Mobility Aid",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold)),
            ),

            Center(
              child: GradientText(
                'An intelligent solution for visually impaired individuals',
                style: const TextStyle(fontSize: 25),
                gradient: LinearGradient(colors: [
                  Colors.yellow.shade400,
                  Colors.yellow.shade900,
                ]),
              ),
            ),


            TextButton(
              onPressed: () {
                Get.to(() => DashBoard());
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, minimumSize: Size(Get.width * 0.7, 20),
                backgroundColor: Color.fromRGBO(255, 255, 0,1),
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: .5,
                    fontSize: 40),
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
              child: Text("Proceed", style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}