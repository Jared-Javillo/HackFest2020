import 'package:Akay/UserModel.dart';

class Message {
  final User sender;
  final String
      time;
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
  imageUrl: 'assets/images/monika.png',
);

final User monika = User(
  id: 1,
  name: 'Monika',
  imageUrl: 'assets/images/monika.png'
);

final User sayori = User(
  id: 2,
  name: 'Sayori',
  imageUrl: 'assets/images/sayori.png'
);

final User akay = User(
  id: 3,
  name: 'Akay Admin',
  imageUrl: 'assets/images/akay_logo.png'
);

//CHATS

List<Message> chats = [
  Message(
    sender: monika,
    time: "6:30 PM",
    text: 'You fucking simp, shut the fucc up!',
    unread: true,
  ),
  Message(
    sender: akay,
    time: "6:01 PM",
    text: 'Finish ur damn views !! LMAO',
    unread: false,
  ),
  Message(
    sender: sayori,
    time: '4:20 PM',
    text: 'Nekopara vol.4 IS OUT',
    unread: false,
  )
];