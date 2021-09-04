// 라우터 관리 파일( 화면 이동 경로 정의 )
import 'package:flutter/material.dart';
import 'package:market_kurly_ui/screens/main_screens.dart';
import 'package:market_kurly_ui/screens/signin/signin_screen.dart';
import 'package:market_kurly_ui/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
