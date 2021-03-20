import 'package:dailyzerowaste/login.dart';
import 'package:dailyzerowaste/model/user.dart';
import 'package:flutter/material.dart';

class mypage extends StatefulWidget {
  mypage(User currentUser);

  @override
  State<StatefulWidget> createState() {
    print(currentUser.image.toString());
    return _myPage();
  }
}

class _myPage extends State<mypage> {
  @override
  Widget build(BuildContext context) {
    // 배경 이미지
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("image/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              // User 정보 부분
              Container(
                padding:
                    EdgeInsets.only(left: 36, top: 76, right: 36, bottom: 31),
                child: Row(
                  children: <Widget>[
                    // 프로필 사진
                    Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(currentUser.image)
                        ),
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    SizedBox(width: 16),
                    // User 이름과 정보
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            currentUser.username,
                            style: TextStyle(
                              fontFamily: 'Quick-Pencil',
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            currentUser.email,
                            style: TextStyle(
                              fontFamily: 'Quick-Pencil',
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // 가운데 요소들
              Container(
                padding:
                    EdgeInsets.only(left: 36, top: 31, right: 36, bottom: 31),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'settings',
                      style: TextStyle(
                        fontFamily: 'Quick-Pencil',
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10.7),
                    Image.asset('image/source_bar_2.png'),
                    SizedBox(height: 10.7),
                    Text(
                      'Version',
                      style: TextStyle(
                        fontFamily: 'Quick-Pencil',
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10.7),
                    Image.asset('image/source_bar_2.png'),
                    SizedBox(height: 10.7),
                    Text(
                      'Contact us',
                      style: TextStyle(
                        fontFamily: 'Quick-Pencil',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
