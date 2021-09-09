import 'package:flutter/material.dart';
import 'package:market_kurly_ui/models/grid_category_menu.dart';

class ImageTextCard extends StatelessWidget {
  final GridCategoryMenu item;
  const ImageTextCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 1,
      // 카드 위젯의 기본 라운드 처리 제거
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      // 카드 위젯의 기본 마진 제거
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          // 카드 위젯은 기본적으로 자식 위젯의 크기에 따라 결정되지만
          // 자식 위젯의 크기를 정해주지 않고 Expanded의 flex를 통해 결정하여 부모 위젯에서 크기에 제약을 줄 수 있음
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                item.title,
                style: TextStyle(fontSize: 13),
              ),
            ),
          )
        ],
      ),
    );
  }
}
