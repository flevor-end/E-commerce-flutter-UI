import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masdamas/constants.dart';
import 'package:masdamas/screens/home/components/section_title.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Escanear"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "QR Code"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Enviar"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Billetera"},
      //{"icon": "assets/icons/Discover.svg", "text": "mas"},
    ];

    return Column(
      children: [
        SectionTitle(text: "Transacciones", press: () {}),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                  categories.length,
                  (index) => CategoryCard(
                        icon: categories[index]["icon"],
                        text: categories[index]["text"],
                        press: () {},
                      ))
            ],
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: press,
          child: SizedBox(
            width: 62,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset(
                      icon,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  text,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
