import 'package:flutter/material.dart';
import 'package:masdamas/screens/cart/cart_screen.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            numOfitems: 3,
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Camera Icon.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}
