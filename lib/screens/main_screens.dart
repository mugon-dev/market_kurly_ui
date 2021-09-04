import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static String routeName = 'main_screens';
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('mainScreen'),
      ),
    );
  }
}
