
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(43, 87, 64, 1),

      body: Stack(
        children: [
          Container(
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
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: Get.width * .55,
                  height: Get.width * .55,

                  //margin: EdgeInsets.all(20),
                 // decoration: BoxDecoration(
                   //   image: DecorationImage(
                     //     image: AssetImage("assets/images/"),
                     //     fit: BoxFit.contain)),
                )
              ],
            ),
          ),
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                //Top Nav
                Row(
                  children: [
                    SizedBox(width: 20),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu, color: Colors.white)),
                    Expanded(child: Container()),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications, color: Colors.white)),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "User",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                            fontSize: 60),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: Get.height * .3),
                Expanded(
                  child: Container(
                    width: Get.width,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35))),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [

                          Container(
                              width: Get.width * .3,
                              height: Get.height * .3,
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

                            child: Text(
                              "Select actions below",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                          ),

                          Container(
                            width: Get.width * .45,
                            height: Get.height * .3,

                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                               image: DecorationImage(
                                 image: AssetImage("assets/images/map.png"),
                                 fit: BoxFit.contain)),
                          )

                        ],
                      ),
                    ),
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