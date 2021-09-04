import 'package:flutter/material.dart';
import 'package:market_kurly_ui/screens/category/category_screen.dart';
import 'package:market_kurly_ui/screens/home/home_screen.dart';
import 'package:market_kurly_ui/screens/my_kurly/my_kurly_screen.dart';
import 'package:market_kurly_ui/screens/recommend/recommend_screen.dart';
import 'package:market_kurly_ui/screens/search/search_screen.dart';

class MainScreen extends StatefulWidget {
  static String routeName = 'main_screens';
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
      index: _selectedIndex,
      children: [
        HomeScreen(),
        RecommendScreen(),
        CategoryScreen(),
        SearchScreen(),
        MyKurlyScreen(),
      ],
    ));
  }
}
