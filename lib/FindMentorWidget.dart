import 'package:flutter/material.dart';
import 'starRating.dart';

class FindMentorWidget extends StatefulWidget {
  final String name;
  final String username;
  final String teach;
  final String bio;
  final String bio2;
  final String imageLoc;

  FindMentorWidget(
      this.name, this.username, this.teach, this.bio, this.bio2, this.imageLoc);

  @override
  _FindMentorWidgetState createState() => _FindMentorWidgetState();
}

class _FindMentorWidgetState extends State<FindMentorWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF1D6260), Color(0xFFCDFADB), Color(0xFFFBE7C6)],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Column(
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
                image: AssetImage(widget.imageLoc),
                width: 190,
                height: 190,
              ),
            ),
            Text(
              'Click to view more',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF999999),
              ),
            ),
            Text(
              widget.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Theme.of(context).primaryColor,
              ),
            ),
            StarDisplay(value: 3),
            Container(
              // short info lines
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 10,
                bottom: 5,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Hi! I like teaching ' + widget.teach,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              // short info lines
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 10,
                bottom: 5,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                widget.bio,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              // short info lines
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 10,
                bottom: 5,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                widget.bio,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              // short info lines
              width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 10,
                bottom: 5,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                widget.bio2,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
