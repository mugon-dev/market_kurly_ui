import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static String routeName = 'main_screens';
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('mainScreen'),
      ),
    );
  }
}
