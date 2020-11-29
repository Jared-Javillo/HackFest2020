import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import './MainScreen.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFBE7C6), Color(0xFFCDFADB), Color(0xFF1D6260)],
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            decoration: BoxDecoration(
              color: Color(0x99EDF9F8),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10.0),
              ),
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    },
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        // DP frame
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFFCFCFCF),
                                spreadRadius: 3,
                                blurRadius: 7,
                              )
                            ]),
                        child: Image(
                          image: AssetImage('assets/images/monika.png'),
                          width: ScreenUtil().setWidth(200.0),
                          height: ScreenUtil().setHeight(200.0),
                        ),
                      ),
                      SizedBox(width: ScreenUtil().setWidth(30)),
                      Column(
                        children: [
                          Text(
                            'Monika',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenUtil().setSp(98),
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Text(
                            '@ddlcmonika',
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(63),
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 4,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Account Settings",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(70),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Your Profile",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(70),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Your Mentors",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(70),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Your Mentees",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(70),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Notifications",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(70),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Report A Problem",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(70),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(70),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
