import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Column(
      // body
      children: [
        Container(
          // DP frame
          margin: EdgeInsets.only(
            top: 50,
            bottom: 10,
          ),
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
            image: AssetImage('assets/images/craig.jpg'),
            width: ScreenUtil().setWidth(400),
            height: ScreenUtil().setHeight(400),
          ),
        ),
        Text(
          'Craig',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: ScreenUtil().setSp(98),
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(
          '@DaBeard',
          style: TextStyle(
            fontSize: ScreenUtil().setSp(63),
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(
          'Edit profile',
          style: TextStyle(
            fontSize: ScreenUtil().setSp(42),
            color: Color(0xFF999999),
          ),
        ),
        Container(
          // bio
          margin: EdgeInsets.only(
            top: 10,
            left: 20,
            right: 20,
          ),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
            style: TextStyle(
              fontSize: ScreenUtil().setSp(49),
            ),
          ),
        ),
        Container(
          // mentor mentee tags
          margin: EdgeInsets.only(
            top: 10,
            left: 20,
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Mentee Tags',
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(49),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Math',
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(49),
                            ),
                          ),
                          Text(
                            'Programming',
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(49),
                            ),
                          ),
                          Text(
                            'Tekken',
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(49),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Mentor Tags',
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(49),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Theology',
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(49),
                            ),
                          ),
                          Text(
                            'Literature',
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(49),
                            ),
                          ),
                          Text(
                            'Beard Keeping',
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(49),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
