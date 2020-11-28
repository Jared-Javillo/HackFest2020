import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';

import 'dart:async';
import './LogInScreen.dart';
import './AkayIcons.dart';
import './SettingsScreen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(new Duration(seconds: 2), () {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LogInScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color(0xFFFBE7C6),
            Color(0xFFCDFADB),
            Color(0xFF1D6260)
          ])),
      child: Center(
        child: Image(
          image: AssetImage('assets/images/akay_logo.png'),
          width: ScreenUtil().setWidth(400.0),
          height: ScreenUtil().setHeight(400.0),
        ),
      ),
    );
  }
}
