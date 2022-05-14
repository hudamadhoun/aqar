import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();

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
          image: AssetImage('asset/images/login.png'),
        )),
        child: Stack(
          children: [
            Positioned(
                left: 474,
                top: 546.88,
                child: Container(
                  alignment: Alignment.center,
                  //margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                  //padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)),
                    ],
                  ),
                  child: TextField(
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Color(012367),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Color(012367),
                      ),
                      hintText: "اسم المستخدم أو الإيميل",
                    ),
                  ),
                )),
            Positioned(
              left: 412,
              top: 661.88,
              child: Container(
                alignment: Alignment.center,
                //margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                //padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffEEEEEE),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 20),
                        blurRadius: 100,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: TextField(
                  controller: passwordcontroller,
                  keyboardType: TextInputType.visiblePassword,
                  cursorColor: Color(012367),
                  decoration: InputDecoration(
                    focusColor: Color(012367),
                    icon: Icon(
                      Icons.vpn_key,
                      color: Color(012367),
                    ),
                    hintText: "كلمة المرور",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 189,
              top: 707.88,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    // Write Click Listener Code Here
                  },
                  child: Text("هل نسيت كلمة المرور؟",
                    style: TextStyle(
                      color: Color(0xff6a5e5e),
                      fontSize: 18,
                      fontFamily: "Cairo",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
                left: 277,
                top: 768.88,
              child:GestureDetector(
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
            ),
            ),
          ],
        ),
      ),
    );
  }
}
