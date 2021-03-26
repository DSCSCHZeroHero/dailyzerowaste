import 'package:cloud_firestore/cloud_firestore.dart';

import 'user.dart';

class Check {
  String title;
  String text;
  String userImage;
  String userId;
  String userName;
  String image;
  String timestamp;
  DocumentReference reference;

  Check ({
    this.image,
    this.reference,
    this.userImage,
    this.text,
    this.title,
    this.userId,
    this.userName,
    this.timestamp,
  });

  Check .fromMap(Map<String, dynamic> map,
      {this.reference}) // 생성자 리다이렉팅 : 특정 생성자에게 처리를 위임할 수 있음
      : assert(map['title'] != null),
        title = map['title'],
        text = map['text'],
        image = map['image'],
        userId = map['userId'],
        userName = map['userName'],
        userImage = map['userImage'],
        timestamp = map['timestamp'];

  Check .fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data(), reference: snapshot.reference);

  factory Check .fromDocumnet(DocumentSnapshot doc) {
    Map getDocs = doc.data();
    return Check (
      image: getDocs["image"],
      reference: getDocs["reference"],
      userId: getDocs["userId"],
      userName: getDocs["userId"],
      title: getDocs["title"],
      text: getDocs["text"],
      userImage: getDocs["userImage"],
      timestamp: getDocs["timestamp"],
    );
  }
}
