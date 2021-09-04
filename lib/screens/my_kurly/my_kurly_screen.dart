import 'package:flutter/material.dart';
import 'package:market_kurly_ui/screens/components/custom_actions.dart';
import 'package:market_kurly_ui/screens/components/default_button.dart';
import 'package:market_kurly_ui/screens/my_kurly/components/my_kurly_header.dart';

class MyKurlyScreen extends StatelessWidget {
  const MyKurlyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // 뒤로 가기 버튼 자동 생성할 것인지
          automaticallyImplyLeading: false,
          title: Text('마이컬리'),
          actions: [CustomActions()],
        ),
        body: Container(
          child: MyKurlyHeader(),
        ));
  }
}
