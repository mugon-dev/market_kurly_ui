import 'package:flutter/material.dart';
import 'package:market_kurly_ui/theme.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '로그인',
          style: textTheme().subtitle1?.copyWith(color: Colors.black),
        ),
        // 뒤로 가기 아이콘, 기능 자동으로 생성
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        bottom: PreferredSize(
          child: Divider(),
          preferredSize: Size.fromHeight(1.0),
        ),
      ),
      body: Container(),
    );
  }
}
