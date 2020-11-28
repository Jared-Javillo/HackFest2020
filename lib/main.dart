import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:firebase_core/firebase_core.dart';

import 'MainScreen.dart';

import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(

      future: _initialization,
      builder: (context, snapshot) {

        if (snapshot.hasError){
        }

        if (snapshot.connectionState == ConnectionState.done){
          return MaterialApp(
            title: 'Akay',
            theme: ThemeData(
              fontFamily: 'RedHatDisplay',
              primaryColor: Color(0xFF1D6260),
              accentColor: Color(0xFFA0E7E5),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: MainScreen());
        }
      },
    );
  }
}
