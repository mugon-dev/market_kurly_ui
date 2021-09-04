import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('로그인'),
        // 뒤로 가기 아이콘, 기능 자동으로 생성
        automaticallyImplyLeading: true,
      ),
      body: Container(),
    );
  }
}
