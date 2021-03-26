import 'package:dailyzerowaste/login.dart';
import 'package:dailyzerowaste/practicecheck.dart';
import 'package:flutter/material.dart';

import 'package:qrscan/qrscan.dart' as scanner; //qrscan 패키지를 scanner 별칭으로 사용.

import 'checkPermission.dart';
import 'model/user.dart';
import 'pageTransition.dart';
import 'stepHistory.dart';
import 'temp.dart';

class StepHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _step();
  }
}

class _step extends State<StepHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        YourStepTitle(), // title
        YourStepInfo(), // step info
        YourTierStatus(), // tier status
      ],
    );
  }
}

// title
class YourStepTitle extends StatelessWidget {
  const YourStepTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 25),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              '6 may 2016 - 18 Aug 2016',
              style: TextStyle(
                fontFamily: 'Quick-Pencil',
                fontSize: 17,
                color: Color(0xff4f4b49),
              ),
            ),
            SizedBox(height: 6),
            Text(
              'YOUR STEP',
              style: TextStyle(
                fontFamily: 'Quick-Pencil',
                fontSize: 30,
                color: Color(0xff4f4b49),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// step info
class YourStepInfo extends StatelessWidget {
  const YourStepInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 59, right: 59),
      child: Row(
        children: <Widget>[
          // 여기서 나무가 자라요
          Container(
            width: 176,
            height: 176,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(100)),
          ),
          SizedBox(width: 29),
          Column(
            children: <Widget>[
              SizedBox(height: 81.48),

              // Try again 버튼
              // Container(
              //   width: 87,
              //   height: 24.18,
              //   decoration: BoxDecoration(
              //     border: Border.all(
              //       width: 1.5,
              //       color: Color(0xff4f4b49),
              //     ),
              //     borderRadius: BorderRadius.circular(50),
              //   ),
              //   child: Center(
              //     child: InkWell(
              //       child: Text(
              //         'Try again',
              //         style: TextStyle(
              //           fontFamily: 'Quick-Pencil',
              //           fontSize: 15,
              //           color: Color(0xff4f4b49),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              // 퍼센티지
              Container(
                padding: EdgeInsets.only(top: 6.5),
                child: Text(
                  '34%',
                  style: TextStyle(
                    fontFamily: 'Quick-Pencil',
                    fontSize: 60,
                    color: Color(0xff4f4b49),
                  ),
                ),
              ),

              // Practice Count
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      '26',
                      style: TextStyle(
                        fontFamily: 'Quick-Pencil',
                        fontSize: 25,
                        color: Color(0xff4f4b49),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'PRACTICES',
                      style: TextStyle(
                        fontFamily: 'Quick-Pencil',
                        fontSize: 25,
                        color: Color(0xff4f4b49),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// tier status
class YourTierStatus extends StatelessWidget {
  const YourTierStatus({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 33, right: 44, top: 34),
      child: Column(
        children: <Widget>[
          // 첫번째 칭호
          Container(
            padding: EdgeInsets.all(0), // padding initialize
            child: Row(
              children: <Widget>[
                // 칭호 사진
                Container(
                  width: 106,
                  height: 106,
                  decoration: BoxDecoration(
                    //border: Border.all(width: 1, color: Colors.black), // debug only
                    image: DecorationImage(
                      image: AssetImage('image/tier/DIY_beginner.png'),
                    ),
                  ),
                ),

                // 어떤 분야의 칭호인지
                Container(
                  padding: EdgeInsets.only(left: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'DIY',
                        style: TextStyle(
                          fontFamily: 'Quick-Pencil',
                          fontSize: 20,
                          color: Color(0xff4f4b49),
                        ),
                      ),
                      SizedBox(height: 13),
                      Text(
                        '3 PRACTICES',
                        style: TextStyle(
                          fontFamily: 'Quick-Pencil',
                          fontSize: 32,
                          color: Color(0xff4f4b49),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 31),

                // TRY 버튼
                InkWell(
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/try_button.png'),
                      ),
                      //border: Border.all(width: 1, color: Colors.black), // debug only
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),

          // 두번째 칭호
          Container(
            padding: EdgeInsets.all(0), // padding initialize
            child: Row(
              children: <Widget>[
                // 칭호 사진
                Container(
                  width: 106,
                  height: 106,
                  decoration: BoxDecoration(
                    //border: Border.all(width: 1, color: Colors.black), // debug only
                    image: DecorationImage(
                      image: AssetImage('image/tier/shop_beginner.png'),
                    ),
                  ),
                ),

                // 어떤 분야의 칭호인지
                Container(
                  padding: EdgeInsets.only(left: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Visit zerowaste shop',
                        style: TextStyle(
                          fontFamily: 'Quick-Pencil',
                          fontSize: 20,
                          color: Color(0xff4f4b49),
                        ),
                      ),
                      SizedBox(height: 13),
                      Text(
                        '3 PRACTICES',
                        style: TextStyle(
                          fontFamily: 'Quick-Pencil',
                          fontSize: 32,
                          color: Color(0xff4f4b49),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 25),

                // TRY 버튼
                InkWell(
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/try_button.png'),
                      ),
                      //border: Border.all(width: 1, color: Colors.black), // debug only
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onTap: () async {
                    await PopUpHelper.confirm(context);
                    await Scaffold.of(context).showSnackBar(SnackBar(
                        duration: const Duration(seconds: 2),
                        backgroundColor: Color(0xff4f4b49),
                        content: Text("Success scanning QR Code")));
                  },
                ),
              ],
            ),
          ),

          // 세번째 칭호
          Container(
            padding: EdgeInsets.all(0), // padding initialize
            child: Row(
              children: <Widget>[
                // 칭호 사진
                Container(
                  width: 106,
                  height: 106,
                  decoration: BoxDecoration(
                    //border: Border.all(width: 1, color: Colors.black), // debug only
                    image: DecorationImage(
                      image: AssetImage('image/tier/check_beginner.png'),
                    ),
                  ),
                ),

                // 어떤 분야의 칭호인지
                Container(
                  padding: EdgeInsets.only(left: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Check practice',
                        style: TextStyle(
                          fontFamily: 'Quick-Pencil',
                          fontSize: 20,
                          color: Color(0xff4f4b49),
                        ),
                      ),
                      SizedBox(height: 13),
                      Text(
                        '3 PRACTICES',
                        style: TextStyle(
                          fontFamily: 'Quick-Pencil',
                          fontSize: 32,
                          color: Color(0xff4f4b49),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 31),

                // TRY 버튼
                InkWell(
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/try_button.png'),
                      ),
                      //border: Border.all(width: 1, color: Colors.black), // debug only
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => PracticeCheckPage(currentUser))),
                ),
              ],
            ),
          ),

          // 네번째 칭호
          Container(
            padding: EdgeInsets.all(0), // padding initialize
            child: Row(
              children: <Widget>[
                // 칭호 사진
                Container(
                  width: 106,
                  height: 106,
                  decoration: BoxDecoration(
                    //border: Border.all(width: 1, color: Colors.black), // debug only
                    image: DecorationImage(
                      image: AssetImage('image/tier/share_beginner.png'),
                    ),
                  ),
                ),

                // 어떤 분야의 칭호인지
                Container(
                  padding: EdgeInsets.only(left: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Share hashtags',
                        style: TextStyle(
                          fontFamily: 'Quick-Pencil',
                          fontSize: 20,
                          color: Color(0xff4f4b49),
                        ),
                      ),
                      SizedBox(height: 13),
                      Text(
                        '3 PRACTICES',
                        style: TextStyle(
                          fontFamily: 'Quick-Pencil',
                          fontSize: 32,
                          color: Color(0xff4f4b49),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 31),

                // TRY 버튼
                InkWell(
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/try_button.png'),
                      ),
                      //border: Border.all(width: 1, color: Colors.black), // debug only
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PopUpMessageDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _popUpMessageDialog();
  }
}

class _popUpMessageDialog extends State<PopUpMessageDialog> {
  String _marketID = '';
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _popUpMessage(context),
    );
  }

  //비동기 함수
  Future _scan() async {
    // 되긴 됐는데 비동기 프로그래밍을 좀 더 공부해봐야할 듯
    bool status = await checkPermission();

    //스캔 시작 - 이때 스캔 될때까지 blocking
    String barcode = await scanner.scan();
    //스캔 완료하면 _output 에 문자열 저장하면서 상태 변경 요청.
    setState(() {
      _marketID = barcode;

      // 다시 step페이지로 이동
      Navigator.popUntil(
          context, ModalRoute.withName(Navigator.defaultRouteName));
    });
  }

  _popUpMessage(BuildContext context) => Container(
        width: 348,
        height: 183,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 38),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Take a ',
                  style: TextStyle(fontFamily: 'Nanum-SquareR', fontSize: 21),
                ),
                Text(
                  'QR Code',
                  style: TextStyle(fontFamily: 'Nanum-SquareB', fontSize: 21),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'from the Zero Waste Shop!',
              style: TextStyle(fontFamily: 'Nanum-SquareR', fontSize: 21),
            ),
            SizedBox(height: 30),
            InkWell(
              child: Container(
                padding: EdgeInsets.fromLTRB(18, 7, 18, 6),
                width: 64,
                height: 36,
                decoration: BoxDecoration(
                    color: Color(0xff4f4b49),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'OK',
                  style: TextStyle(
                    fontFamily: 'Nanum-SquareR',
                    fontSize: 21,
                    color: Colors.white,
                  ),
                ),
              ),
              onTap: () => _scan(),
            ),
          ],
        ),
      );
}

class PopUpHelper {
  static confirm(context) =>
      showDialog(context: context, builder: (context) => PopUpMessageDialog());
}
