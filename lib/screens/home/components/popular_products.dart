import 'package:flutter/material.dart';
import 'package:masdamas/Models/products.dart';
import 'package:masdamas/components/product_card.dart';
import 'package:masdamas/screens/details/details_screen.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: 'Productos Populares', press: () {}),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular)
                  return ProductCard(
                    product: demoProducts[index],
                    press: () => Navigator.pushNamed(
                      context,
                      DetailsScreen.routeName,
                      arguments:
                          ProductDetailsArguments(product: demoProducts[index]),
                    ),
                  );

                return SizedBox.shrink();
              }),
            ],
          ),
        ),
      ],
    );
  }
}
