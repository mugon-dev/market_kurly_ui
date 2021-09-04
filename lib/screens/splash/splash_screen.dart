// 앱이 시작할때 보여주는 시작화면
// 앱의 데이터를 로딩하는 시간 동안 빈 화면을 보여쥐 않기위해 노출하는 화면
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_kurly_ui/constants.dart';
import 'package:market_kurly_ui/screens/main_screens.dart';

class SplashScreen extends StatelessWidget {
  // 이 화면을 찾을 때 경로의 이름
  static String routeName = '/splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  "Kurly",
                  style:
                      GoogleFonts.pacifico(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: TextButton(
                  onPressed: () {
                    _completeSplash(context, MainScreen());
                  },
                  child: Text("Continue"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }
}
