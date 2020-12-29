import 'package:flutter/material.dart';
import 'package:masdamas/constants.dart';
import 'package:masdamas/size_config.dart';

class CategoriesPlus extends StatefulWidget {
  @override
  _CategoriesPlusState createState() => _CategoriesPlusState();
}

class _CategoriesPlusState extends State<CategoriesPlus> {
  int selectedCategory = 0;
  List<String> categoriesPlus = [
    "MAS \npara MI",
    "MAS \nShopping",
    "MAS \nDomicilios",
    "MAS \nServicios",
    "MAS \nRemates",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10) / 2),
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFFCC0202),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesPlus.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                vertical: (kDefaultPadding / 2),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: (kDefaultPadding / 2),
                vertical: (kDefaultPadding / 2),
              ),
              decoration: BoxDecoration(
                  color: index == selectedCategory
                      ? kSecondaryColor
                      : Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                categoriesPlus[index],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color:
                          index == selectedCategory ? Colors.white : kTextColor,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
