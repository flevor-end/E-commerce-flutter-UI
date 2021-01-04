import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masdamas/Models/products.dart';
import 'package:masdamas/constants.dart';
import 'package:masdamas/size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRetion = 1.02,
    @required this.product,
    @required this.press,
  }) : super(key: key);

  final double width, aspectRetion;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRetion,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Shoppers(),
              buildTimer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          color: product.isFavourite
                              ? Color(0xFFFFECDF)
                              : Color(0xFF343434).withOpacity(0.20),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite
                            ? kPrimaryColor
                            : Color(0xFFD8DEE4),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0.0),
          duration: Duration(seconds: 60),
          builder: (_, value, child) => Text(
            "12:00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}

class Shoppers extends StatelessWidget {
  const Shoppers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        children: [
          ...List.generate(demoProducts[0].users.length, (index) {
            totalUser++;
            return Positioned(
              left: (22 * index).toDouble(),
              child: buildShopperFace(index),
            );
          }),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: SizedBox(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              child: FlatButton(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: kPrimaryColor,
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ClipOval buildShopperFace(int index) {
    return ClipOval(
      child: Image.asset(
        demoProducts[0].users[index].image,
        height: getProportionateScreenWidth(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
