import 'package:flutter/material.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products.dart';
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
          DiscountBanner(),
          Categories(),
          SizedBox(
            height: (30),
          ),
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
