import './UserModel.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

//USERS
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/craig.jpg',
);

final User ingrid = User(
  id: 1,
  name: 'Ingrid',
  imageUrl: 'assets/images/ingrid.jpg',
);

final User isabella = User(
  id: 2,
  name: 'Isabella',
  imageUrl: 'assets/images/isabella.jpeg',
);

final User juan = User(
  id: 3,
  name: 'Juan',
  imageUrl: 'assets/images/juan.jpg',
);

//CHATS

List<Message> chats = [
  Message(
    sender: ingrid,
    time: "6:30 PM",
    text: 'God??',
    unread: true,
  ),
  Message(
    sender: isabella,
    time: "6:01 PM",
    text: 'sincos * cossin',
    unread: false,
  ),
  Message(
    sender: juan,
    time: '4:20 PM',
    text: 'Visual Code > Android Studio',
    unread: false,
  )
];
