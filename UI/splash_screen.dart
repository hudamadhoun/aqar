import 'package:aqar/UI/skip1_Screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class splash extends StatefulWidget {
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                skipone()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/images/bg.png'),
            )
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 174,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 112,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('asset/images/img.png'),
                  )),
                ),
                Positioned(
                  left: 121,
                  top: 282,
                  child: Text(
                    "Homely",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
                Positioned(
                  left: 36,
                  top: 390,
                  child: SizedBox(
                    width: 356,
                    height: 155,
                    child: Text(
                      "إنضم في أي مكان \n إحجز أي عقار وفي أي وقت   ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0x7fffffff),
                        fontSize: 23,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )),
    );
  }
}
