import 'package:flutter/material.dart';
import 'package:aqar/UI/login_screen.dart';

class welcome extends StatefulWidget {
  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
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
          image: AssetImage('asset/images/welcome.png'),
        )),
        child: Stack(
          children: [
            Positioned(
              left: 300,
              top: 100,
              child: Container(
                width: 30,
                height: 30,
              ),
            ),
            Positioned(
              left: 200,
              top: 650,
              child: SizedBox(
                width: 153,
                height: 41,
                child: Text(
                  "هل أنت زائر ؟",
                  style: TextStyle(
                    color: Color(0xff938888),
                    fontSize: 25,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 100,
              top: 650,
              child: Text(
                "اضغط هنا",
                style: TextStyle(
                  color: Color(0xff012367),
                  fontSize: 25,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              left: 90,
              top: 720,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => login()));
                    },
                    child: Container(
                      width: 225,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Color(0xff012367),
                      ),
                      padding: const EdgeInsets.only(
                        bottom: 3,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "تسجيل الدخول ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: "Cairo",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
