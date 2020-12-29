import 'package:flutter/material.dart';
import 'package:masdamas/constants.dart';

class CategoriesPlusCard extends StatelessWidget {
  final String categoriesPlus;

  const CategoriesPlusCard({Key key, this.categoriesPlus}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        horizontal: (5),
        vertical: (10),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: (10),
        //vertical: (10),
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Text(
        categoriesPlus,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: kTextColor.withOpacity(0.8),
          fontSize: 14,
        ),
      ),
    );
  }
}
