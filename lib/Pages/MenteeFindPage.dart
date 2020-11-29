import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

import '../ModelsAndLists/MenteeList.dart';

class MenteeFindPage extends StatefulWidget {
  @override
  _MenteeFindPageState createState() => _MenteeFindPageState();
}

class _MenteeFindPageState extends State<MenteeFindPage> {
  CardController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: new TinderSwapCard(
        swipeUp: true,
        swipeDown: false,
        orientation: AmassOrientation.TOP,
        totalNum: mentees.length,
        stackNum: 2,
        swipeEdge: 2.0,
        maxWidth: MediaQuery.of(context).size.width * 0.9,
        maxHeight: MediaQuery.of(context).size.height * 0.9,
        minWidth: MediaQuery.of(context).size.width * 0.8,
        minHeight: MediaQuery.of(context).size.height * 0.8,
        cardBuilder: (context, index) {
          return mentees[index];
        },
        cardController: controller = CardController(),
        swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
          /// Get swiping card's alignment
          if (align.x < 0) {
            //Card is LEFT swiping
          } else if (align.x > 0) {
            //Card is RIGHT swiping
          }
        },
        swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
          /// Get orientation & index of swiped card!
        },
      ),
    );
  }
}
