import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/product.dart';
import 'package:market_kurly_ui/theme.dart';
import 'package:market_kurly_ui/string_extensions.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final bool? lineChange;
  final double? textContainerHeight;
  const ProductItem(
      {Key? key,
      required this.product,
      this.lineChange = false,
      this.textContainerHeight = 80})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // 세로 크기는 사용하는 부모 위젯에서 결정
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Image.network(
              product.imageUrl ?? "assets/images/kurly_banner_0.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Text.rich 위젯을 이용하여 문단별로 글자 스타일 추가
        // 글자가 들어가는 부분은 기본 높이 값을 80(textContainerHeight)으로 지정
        Container(
          height: textContainerHeight,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "${product.title} ${lineChange == true ? "\n" : ""}",
                    style: textTheme().subtitle1,
                  ),
                  TextSpan(
                    text: "${product.discount}%",
                    style: textTheme().headline2?.copyWith(color: Colors.red),
                  ),
                  TextSpan(
                    text: discountPrice(
                        product.price ?? 0, product.discount ?? 0),
                    style: textTheme().subtitle1,
                  ),
                  TextSpan(
                    text: "${product.price.toString().numberFormat()}원",
                    style: textTheme().bodyText2?.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  // 할인율에 따라 가격이 계산
  String discountPrice(int price, int discount) {
    double discountRate = ((100 - discount) / 100);
    int discountPrice = (price * discountRate).toInt();
    return "${discountPrice.toString().numberFormat()}원";
  }
}
