import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/product.dart';
import 'package:market_kurly_ui/screens/components/product_item.dart';
import 'package:market_kurly_ui/screens/home/components/circle_container.dart';
import 'package:market_kurly_ui/screens/home/components/product_filter_button.dart';

class NewProductPage extends StatelessWidget {
  const NewProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      // CustomScrollView 사용하면 슬라이더를 직접 제공하여 목록, 그리드 및 확장 헤더 같은 다양한 스크롤 효과 생성
      child: CustomScrollView(
        slivers: <Widget>[
          // 콘텐츠 컨트롤을 새로 고치기 위해 ios스타일의 끌어 오기를 구현 (안드로이드에서 작동x)
          CupertinoSliverRefreshControl(
            onRefresh: () {
              return Future<void>.delayed(const Duration(seconds: 1));
            },
          ),
          // CustomScrollView의 머터리얼 디자인 앱 바
          // 앱이 스크롤 될 때마다 형태를 바꾸거나 사라지는 효과 생성 가능
          SliverAppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              SizedBox(
                child: ProductFilterButton(),
                width: 100,
              )
            ],
          ),
          // 한 화면에 리스트 뷰와 그리드 뷰만 있다면 각 항목당 개별적으로 스크롤만 가능
          // 다 같이 스크롤 하고 싶거나 더 복잡한 스크롤 뷰 효과를 만들고 싶을때 슬리버 리스트와 슬리버 그리드 사용
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Stack(
                  children: [
                    ProductItem(product: productList[index]),
                    Positioned(
                        bottom: 90,
                        right: 10,
                        child: CircleContainer(
                          iconPath: 'assets/icons/shopping-cart.svg',
                        ))
                  ],
                );
              },
              childCount: productList.length,
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              // 그리브 뷰에 들어올 하나의 항목에 최대 크기를 지정하고 이 값에 따라 교차 축의 범위를 균등하게 나눔
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.6,
            ),
          ),
        ],
      ),
    );
  }
}
