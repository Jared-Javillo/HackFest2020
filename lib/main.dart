import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import './SplashScreen.dart';

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
            title: 'Minecraft Worlds',
            theme: ThemeData(
              primarySwatch: Colors.teal,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: SplashScreen());
        }
      },
    );
  }
}
