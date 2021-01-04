import 'package:flutter/material.dart';
import 'package:masdamas/screens/home/components/reward.dart';
import 'categories.dart';
import 'categories_plus.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'shopping.dart';
import 'special_offers.dart';
import 'to_the_hand.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: (20),
          ),
          HomeHeader(),
          SizedBox(
            height: (20),
          ),
          CategoriesPlus(),
          //DiscountBanner(),
          SizedBox(
            height: (20),
          ),
          Categories(),
          SizedBox(
            height: (20),
          ),
          Shopping(),
          ToTheHand(),
          SizedBox(
            height: (20),
          ),
          //SpecialOffers(),
          PopularProducts(),
          SizedBox(
            height: (20),
          ),
          Reward(),
          SizedBox(
            height: (20),
          ),
        ],
      ),
    ));
  }
}
