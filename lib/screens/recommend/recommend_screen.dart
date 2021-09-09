import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/product.dart';
import 'package:market_kurly_ui/screens/recommend/components/card_product_item.dart';
import 'package:market_kurly_ui/theme.dart';

class RecommendScreen extends StatelessWidget {
  const RecommendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("추천"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "베이커리 인기 급상승 랭킹",
              style: textTheme().headline1,
            ),
          ),
          const SizedBox(height: 15),
          Container(
            color: Colors.orange[100],
            height: 270,
            child: Center(child: Text('수평 스크롤 영역')),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "후기가 좋은 상품",
              style: textTheme().headline1,
            ),
          ),
          const SizedBox(height: 15),
          Container(
            color: Colors.red[100],
            height: 270,
            child: Center(child: Text('수평 스크롤 영역2')),
          ),
          const SizedBox(height: 20),
          Container(
            height: 360,
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 40),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                width: 320,
                child: CardProductItem(
                  item: productList[index],
                ),
              ),
              itemCount: productList.length,
            ),
          ),
        ],
      ),
    );
  }
}
