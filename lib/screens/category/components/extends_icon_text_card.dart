import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_kurly_ui/models/list_category_menu.dart';

class ExtendsIconTextCard extends StatefulWidget {
  final ListCategoryMenu item;

  const ExtendsIconTextCard({Key? key, required this.item}) : super(key: key);

  @override
  _ExtendsIconTextCardState createState() => _ExtendsIconTextCardState(item);
}

class _ExtendsIconTextCardState extends State<ExtendsIconTextCard> {
  final ListCategoryMenu item;
  _ExtendsIconTextCardState(this.item);
  bool isShow = false;
  void toggole() {
    setState(() {
      isShow = !isShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 8),
                SizedBox(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset(item.icon),
                ),
                const SizedBox(width: 15),
                Text(item.title),
                const Spacer(),
                SizedBox(
                  width: 30,
                  child: IconButton(
                    onPressed: () {
                      print("toggle");
                      toggole();
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/down-arrow.svg",
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            curve: Curves.fastOutSlowIn,
            height: isShow ? 100 : 0,
            decoration: BoxDecoration(color: Colors.blue[200]),
            child: Center(child: Text("${item.title}")),
          ),
        ],
      ),
    );
  }
}
