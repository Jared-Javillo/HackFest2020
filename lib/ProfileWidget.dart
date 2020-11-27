import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // body
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
              width: 140,
              height: 140,
            ),
          ),
          Text(
            'Monika',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Text(
            '@ddlcmonika',
            style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Text(
            'Edit profile',
            style: TextStyle(
              fontSize: 10,
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
                fontSize: 15,
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
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text('Mentee Tags'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text('Math\nProgramming\nTekken'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text('Mentor Tags'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'Theology\nLiterature',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
