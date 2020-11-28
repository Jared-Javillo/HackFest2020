import 'package:flutter/material.dart';

import './SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Akay',
        theme: ThemeData(
          fontFamily: 'RedHatDisplay',
          primaryColor: Color(0xFF1D6260),
          accentColor: Color(0xFFA0E7E5),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen());
  }
}
