import 'package:aqar/UI/welcome_screen.dart';
import 'package:flutter/material.dart';

class skipthree extends StatefulWidget {

  @override
  State<skipthree> createState() => _skipthreeState();
}

class _skipthreeState extends State<skipthree> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/images/skip3.png'),
            )
        ),

        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 500,),
          child: Row(
            children: [
              Container(
                width: 329,
                height: 72,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => welcome()));
                      },
                      child: Container(
                        width: 285,
                        height: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff012468),
                        ),
                        padding: const EdgeInsets.only(
                          left: 115, right: 135, top: 9, bottom: 5,),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 72,
                              height: 58,
                              child: Text(
                                "التالي ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: "Cairo",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
