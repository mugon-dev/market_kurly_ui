import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market_kurly_ui/screens/components/stack_icon.dart';

class CustomActions extends StatelessWidget {
  const CustomActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 38,
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/pin.svg",
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: 38,
          child: StackIcon(
            imgPath: "assets/icons/shopping-cart.svg",
            onPressed: () {},
            counter: "2",
          ),
        )
      ],
    );
  }
}
