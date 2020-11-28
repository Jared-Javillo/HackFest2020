import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import './MainScreen.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key key}) : super(key: key);
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  
  final getUsername = TextEditingController();
  final getPassword = TextEditingController();

  var authHandler = new Auth();

  @override
  void dispose(){
    getUsername.dispose();
    getPassword.dispose();
    super.dispose();
  }
// Code for login starts at line 89 and code for create user is at line 117
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
                    controller: getUsername,
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
                    controller: getPassword,
                  ),
                ),

                Container( 
                  width: ScreenUtil().setWidth(800),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFFA0E7E5)),
                    onPressed: () {
                        authHandler.handleSignInEmail(getUsername.text, getPassword.text)
                        .then((FirebaseUser user){
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainScreen()
                            )
                          );
                        }
                      );
                    },
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
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFFA0E7E5)),
                    onPressed: () {
                        authHandler.handleCreateAccount(getUsername.text, getPassword.text)
                        .then((FirebaseUser user){
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainScreen()
                            )
                          );
                        }
                      );
                    },
                    child: Text(
                      "CREATE USER",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(60),
                        fontFamily: "RedHatFamily",
                        color: Color(0xFF1D6260),
                      ),
                    ),
                  ),
                ),


                Container(
                  height: ScreenUtil().setHeight(50),
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

class Auth {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<FirebaseUser> handleSignInEmail(String email, String password) async {
    FirebaseUser user = (await auth.signInWithEmailAndPassword(email: email, password: password)).user;

    print('signInEmail succeeded: $user');

    return user;
  }

  Future<FirebaseUser> handleCreateAccount(String email, String password) async {
    FirebaseUser user = (await auth.createUserWithEmailAndPassword(email: email, password: password)).user;

    print('created account');

    return user;
  }
}


