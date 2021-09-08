import 'package:flutter/material.dart';
import 'package:market_kurly_ui/constants.dart';
import 'package:market_kurly_ui/screens/components/custom_actions.dart';
import 'package:market_kurly_ui/screens/home/components/benefit_page.dart';
import 'package:market_kurly_ui/screens/home/components/kurly_page.dart';
import 'package:market_kurly_ui/screens/home/components/new_product_page.dart';
import 'package:market_kurly_ui/screens/home/components/thrifty_shopping_page.dart';
import 'package:market_kurly_ui/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> categories = ['컬리추천', '신상품', '금주혜택', '알뜰쇼핑'];
    return DefaultTabController(
      initialIndex: 0,
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Kurly'),
          actions: [CustomActions()],
          bottom: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.3, color: Colors.grey),
                  ),
                  color: Colors.white),
              child: TabBar(
                tabs: List.generate(
                  categories.length,
                  (index) => Tab(
                    text: categories[index],
                  ),
                ),
                // 선택된 탭의 색상
                labelColor: kPrimaryColor,
                // 선택되지 않은 탭의 색상
                unselectedLabelColor: kSecondaryColor,
                labelStyle: textTheme().headline2?.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
                // 선택한 탭 아래에 표시되는 선의 색상po
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2, color: kPrimaryColor),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(42),
          ),
        ),
        body: TabBarView(
          children: [
            KurlyPage(),
            NewProductPage(),
            BenefitPage(),
            ThriftyShoppingPage(),
          ],
        ),
      ),
    );
  }
}
