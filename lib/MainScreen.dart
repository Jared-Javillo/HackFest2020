import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'ProfileWidget.dart';
import 'FindMentorWidget.dart';
import 'FindMenteeWidget.dart';
// import 'ChatListWidget.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List<Widget> _views = <Widget>[
    ProfileWidget(),
    FindMentorWidget(),
    FindMenteeWidget(),
    Text('Chat'),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  FloatingActionButton _buildMenuButton(int index) {
    FloatingActionButton fab;
    if (index != 3) {
      fab = FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        mini: true,
        child: Icon(Icons.menu),
      );
    }
    return fab;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _buildMenuButton(_selectedIndex),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Container(
        // background
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFBE7C6), Color(0xFFCDFADB), Color(0xFF1D6260)],
          ),
        ),
        child: SingleChildScrollView(
          // translucent box foreground
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              bottom: 20,
            ),
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            decoration: BoxDecoration(
              color: Color(0x99EDF9F8),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10.0),
              ),
            ),

            // put widgets as children of Container here for navbar testing
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 25,
                      ),
                      child: Container(
                        // DP frame
                        margin: EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                        ),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/monika.png'),
                          backgroundColor: Colors.white,
                          radius: 40,
                        ),
                      ),
                    ),
                    Text(
                      'Chats',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      )
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: Column(
                    // Chats
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 20,
                        ),// each Container is a chat
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/monika.png'),
                              backgroundColor: Colors.white,
                              radius: 30,
                            ),
                            Text('Monika'),
                          ],
                        ),
                      ),
                      Container( // each Container is a chat
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/images/sayori.png'),
                              backgroundColor: Colors.white,
                              radius: 30,
                            ),
                            Text('Sayori'),
                          ],
                        ),
                      ),
                    ],
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
            icon: Icon(Icons.chat_bubble),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
