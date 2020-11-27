import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'ProfileWidget.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Widget> _views =
      <Widget>[
        ProfileWidget(),
        Text('Find Mentor'),
        Text('Find Mentee'),
        Text('Chat'),
      ];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          mini: true,
          child: Icon(Icons.menu),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFFBE7C6),
                Color(0xFFCDFADB),
                Color(0xFF1D6260)
              ],
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
                      image: AssetImage('assets/images/monika.png'),
                      width: 190,
                      height: 190,
                    ),
                  ),
                ],
              ),
              // use next line to test navbar functionality
              // child: _views.elementAt(_selectedIndex),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onNavItemTapped,
          iconSize: 35,
          selectedItemColor: Color(0xFFA0E7E5),
          unselectedItemColor: Color(0xFFC4C4C4),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: 'Find a Mentor',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Find a Mentee',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Chat',
            ),
          ],
        ),
      );
  }
}
