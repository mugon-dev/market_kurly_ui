import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/product.dart';
import 'package:market_kurly_ui/screens/components/product_item.dart';
import 'package:market_kurly_ui/screens/home/components/circle_container.dart';

class StackProductItem extends StatelessWidget {
  final double width;
  final Product item;
  final int number;
  const StackProductItem({
    Key? key,
    required this.width,
    required this.item,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.only(left: 10),
      child: Stack(
        children: [
          ProductItem(product: item),
          Positioned(
            left: 10,
            bottom: 80,
            child: Text(
              "$number",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 85,
            child: CircleContainer(
              iconPath: "assets/icons/star.svg",
            ),
          ),
          // number 1일때 투명도를 사용한 container위젯으로 이미지 영역을 덮기 때문에 아래에 있는 inkewll위젯의 ontap을 막음
          number == 1
              ? Container(
                  height: 190,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  child: Center(
                    child: Text(
                      "coming Soon",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
