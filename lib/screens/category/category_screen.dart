import 'package:flutter/material.dart';
import 'package:market_kurly_ui/constants.dart';
import 'package:market_kurly_ui/screens/components/custom_actions.dart';
import 'package:market_kurly_ui/screens/components/text_menu_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("카테고리"),
        actions: [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(
        slivers: [
          // sliver 안에 패딩을 줄때 사용
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            // customScrollView 안에 단일 위젯을 생성할 때 사용
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 60,
                child: TextMenuCard(
                  title: "자주 사는 상품",
                  icon: "assets/icons/right-arrow.svg",
                  textColor: kPrimaryColor,
                  iconColor: kPrimaryColor,
                  press: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
