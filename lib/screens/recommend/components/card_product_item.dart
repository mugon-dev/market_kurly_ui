import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/product.dart';
import 'package:market_kurly_ui/screens/components/product_item.dart';

class CardProductItem extends StatelessWidget {
  final Product item;
  const CardProductItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // elevation과 모서리의 라운드 효과, margin 속성을 위해 card widget 사용
    return Card(
      elevation: 1,
      margin: EdgeInsets.only(left: 16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ProductItem(
              product: item,
              lineChange: true,
              textContainerHeight: 50,
            ),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
              border:
                  Border(top: BorderSide(width: 1.0, color: Color(0xfff5f5f5))),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "이렇게 치즈가 가득한 돈까스를 집에서 먹으니 좋네요"
                  "에어프라이어에 돌리니 간편하고 맛있어요",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
