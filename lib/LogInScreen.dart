import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key key}) : super(key: key);
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color(0xFFFBE7C6),
              Color(0xFFCDFADB),
              Color(0xFF1D6260)
            ])),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image(
                image: AssetImage('assets/images/akay_logo.png'),
                width: ScreenUtil().setWidth(800.0),
                height: ScreenUtil().setHeight(800.0),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: null,
                      hintText: "Username",
                      hintStyle: TextStyle(
                        fontSize: ScreenUtil().setSp(60),
                        fontFamily: "RedHatFamily",
                        color: Color(0xFF1D6260),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: null,
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontSize: ScreenUtil().setSp(60),
                        fontFamily: "RedHatFamily",
                        color: Color(0xFF1D6260),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: ScreenUtil().setWidth(800),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFFA0E7E5)),
                    onPressed: () {},
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(60),
                        fontFamily: "RedHatFamily",
                        color: Color(0xFF1D6260),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: ScreenUtil().setWidth(800),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Create an Account",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(50),
                      fontFamily: "RedHatFamily",
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: ScreenUtil().setWidth(800),
                  height: ScreenUtil().setHeight(50),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Copyright © 2020 by 3rd Years.",
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(30),
                      fontFamily: "RedHatFamily",
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}


