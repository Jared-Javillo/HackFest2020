import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _selectedIndex = 0;
  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
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
            colors: [Color(0xFFFBE7C6), Color(0xFFCDFADB), Color(0xFF1D6260)],
          ),
        ),
        child: Column(
          children: [
            Container(
              child: Row(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/akay_logo'),
                  ),
                  Column(
                    children: [
                      Text("Monika"),
                      Text("@Monika"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: TextButton(
                onPressed: null,
                child: Text("yo"),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: ScreenUtil().setHeight(140),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onNavItemTapped,
          iconSize: ScreenUtil().setSp(60),
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
      ),
    );
  }
}
