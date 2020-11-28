import 'package:flutter/material.dart';

class ChatListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              Container( // each Container is a chat
                margin: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/monika.png'),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Monika',
                            style: TextStyle(
                              fontSize: 25,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Text(
                            'You: Hi Monika!',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container( // each Container is a chat
                margin: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/sayori.png'),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Sayori',
                            style: TextStyle(
                              fontSize: 25,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Text(
                            'You: Hi Monika!',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container( // each Container is a chat
                margin: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/monika.png'),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Monika',
                            style: TextStyle(
                              fontSize: 25,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Text(
                            'You: Hi Monika!',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container( // each Container is a chat
                margin: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/sayori.png'),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Sayori',
                            style: TextStyle(
                              fontSize: 25,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Text(
                            'You: Hi Monika!',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container( // each Container is a chat
                margin: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/monika.png'),
                      backgroundColor: Colors.white,
                      radius: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Monika',
                            style: TextStyle(
                              fontSize: 25,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          Text(
                            'You: Hi Monika!',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
