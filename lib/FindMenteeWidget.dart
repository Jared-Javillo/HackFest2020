import 'package:flutter/material.dart';

class FindMenteeWidget extends StatefulWidget {
  final String name;
  final String username;
  final String learn;
  final String bio;
  final String bio2;
  final String imageLoc;

  FindMenteeWidget(
      this.name, this.username, this.learn, this.bio, this.bio2, this.imageLoc);

  @override
  _FindMenteeWidgetState createState() => _FindMenteeWidgetState();
}

class _FindMenteeWidgetState extends State<FindMenteeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        Container(
          // short info line
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
            'Hi! I like LEARNING ' + widget.learn,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        Container(
          // short info line
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
          // short info line
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
        Container(
          // short info line
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
            'consectetur adipiscing elit',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
