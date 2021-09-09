import 'package:flutter/material.dart';
import 'package:market_kurly_ui/constants.dart';
import 'package:market_kurly_ui/models/product.dart';
import 'package:market_kurly_ui/models/product_details_arguments.dart';
import 'package:market_kurly_ui/screens/components/default_button.dart';
import 'package:market_kurly_ui/screens/details/components/body.dart';
import 'package:market_kurly_ui/theme.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 화면이 갱신될때 (build될 때) ModalRoute 객체를 이용해서 arguments 속성을 받을 수 있음
    // arguments 타입이 object?이기 때문에 형변환 필요
    final argument =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "title",
          style: textTheme().subtitle1?.copyWith(color: Colors.black),
        ),
      ),
      // Body components에 argument 전달
      body: Body(
        product: argument.product,
      ),
      bottomNavigationBar: SafeArea(
        // column은 bottomNavigatorBar 크기에 제약을 주기위해 사용
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DefaultButton(
                text: "구매하기",
                color: kPrimaryColor,
                press: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
