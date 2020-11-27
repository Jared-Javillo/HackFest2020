import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key key}) : super(key: key);
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFFBE7C6), Color(0xFF1D6260)])),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image(
                image: AssetImage('assets/images/akay_logo.png'),
                width: ScreenUtil().setWidth(300.0),
                height: ScreenUtil().setHeight(300.0),
              ),
            )
          ],
        ));
  }
}
