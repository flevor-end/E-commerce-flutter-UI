import 'package:flutter/material.dart';

import 'products.dart';

class Cart {
  final Product product;
  final int numOfitems;

  Cart({@required this.product, @required this.numOfitems});
}

//Demo data cart

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfitems: 2),
  Cart(product: demoProducts[1], numOfitems: 1),
  Cart(product: demoProducts[3], numOfitems: 1),
];
