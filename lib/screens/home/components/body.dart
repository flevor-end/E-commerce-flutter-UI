import 'package:flutter/material.dart';
import 'categories.dart';
import 'categories_plus.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'shopping.dart';
import 'special_offers.dart';

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
            height: (30),
          ),
          Shopping(),
          SpecialOffers(),
          SizedBox(
            height: (30),
          ),
          PopularProducts(),
          SizedBox(
            height: (30),
          ),
        ],
      ),
    ));
  }
}
