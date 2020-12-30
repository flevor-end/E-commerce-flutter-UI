import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masdamas/constants.dart';
import 'package:masdamas/size_config.dart';
import 'categories.dart';
import 'categories_plus.dart';
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

class Shopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 150,
          child: Stack(
            children: <Widget>[
              Container(
                height: 130,
                decoration: BoxDecoration(color: kSecondaryColor),
              ),
              Positioned(
                  bottom: getProportionateScreenHeight(37),
                  right: getProportionateScreenWidth(37),
                  child: Container(
                    width: getProportionateScreenWidth(300),
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 50,
                              color: Color(0xFF121530).withOpacity(0.2))
                        ]),
                    child: Row(
                      //En Proceso
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                //padding: EdgeInsets.all(12),
                                height: 42,
                                width: 42,
                                child:
                                    SvgPicture.asset("assets/icons/SHO1.svg")),
                            SizedBox(
                              height: kDefaultPadding / 8,
                            ),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                      color: kSecondaryColor,
                                    ),
                                    children: [
                                  TextSpan(
                                      text: "En Proceso",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ))
                                ]))
                          ],
                        ),

                        //Enviado
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                //padding: EdgeInsets.all(12),
                                height: 42,
                                width: 42,
                                child:
                                    SvgPicture.asset("assets/icons/SHO2.svg")),
                            SizedBox(
                              height: kDefaultPadding / 8,
                            ),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                      color: kSecondaryColor,
                                    ),
                                    children: [
                                  TextSpan(
                                      text: "Enviado",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ))
                                ]))
                          ],
                        ),
                      ],
                    ),
                  )),
              //Compartido
              Positioned(
                //left: (22 * totalUser).toDouble(),
                child: SizedBox(
                  height: getProportionateScreenWidth(100),
                  width: getProportionateScreenWidth(100),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: kPrimaryColor,
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          child:
                              SvgPicture.asset("assets/icons/COMPARTIDO.svg"),
                        ),
                        SizedBox(
                          height: kDefaultPadding / 8,
                        ),
                        RichText(
                            text: TextSpan(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                children: [
                              TextSpan(
                                  text: "Compartido",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ))
                            ]))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
