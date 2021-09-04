import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/text_menu.dart';
import 'package:market_kurly_ui/screens/components/text_menu_card.dart';
import 'package:market_kurly_ui/screens/my_kurly/components/my_kurly_header.dart';

class MyKurlyBody extends StatelessWidget {
  const MyKurlyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyKurlyHeader(),
        buildPaddingTextMenuCard("비회원 주문 조회", () {}),
        SizedBox(
          height: 330,
          child: ListView.separated(
            // 스크롤 오프셋이 콘텐츠의 경계를 초과하지 않도록 하는 스크롤 물리를 만듭니다.
            // 목록은 끝에서 멈추고 이를 나타내는 효과를 줍니다.
            // 스크롤을 끝까지 내려서 멈추고 이후 스크롤을 막음
            // 리스트 안에 리스트를 만들때 속의 리스트의 전체 리스트를 보여줌
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) => SizedBox(
              height: 55,
              child: TextMenuCard(
                title: textMenuList[index].text,
                icon: textMenuList[index].icon,
                press: () {},
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              height: 0,
            ),
            itemCount: textMenuList.length,
          ),
        ),
        buildPaddingTextMenuCard("컬리 소개", () {}),
        buildPaddingTextMenuCard("컬리 소개", () {}),
        buildPaddingTextMenuCard("컬리 소개", () {}),
      ],
    );
  }

  Widget buildPaddingTextMenuCard(String text, GestureTapCallback press) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: SizedBox(
        height: 55,
        child: TextMenuCard(
          title: text,
          icon: "assets/icons/right-arrow.svg",
          press: press,
          textColor: Colors.black,
        ),
      ),
    );
  }
}
