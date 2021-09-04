import 'package:flutter/material.dart';
import 'package:market_kurly_ui/routes.dart';
import 'package:market_kurly_ui/screens/splash/splash_screen.dart';
import 'package:market_kurly_ui/theme.dart';

void main() {
  runApp(MarketKurly());
}

class MarketKurly extends StatelessWidget {
  const MarketKurly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Market Kurly UI',
      initialRoute: SplashScreen.routeName,
      routes: route,
      theme: theme(),
    );
  }
}
