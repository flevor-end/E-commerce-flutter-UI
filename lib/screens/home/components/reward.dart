import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masdamas/constants.dart';
import 'package:masdamas/screens/home/components/section_title.dart';

class Reward extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/RE1.svg", "text": "Sorpresas"},
      {"icon": "assets/icons/RE2.svg", "text": "Novedades"},
      {"icon": "assets/icons/RE3.svg", "text": "promociones"},
      {"icon": "assets/icons/RE4.svg", "text": "Actividades"},
      //{"icon": "assets/icons/Discover.svg", "text": "mas"},
    ];

    return Column(
      children: [
        SectionTitle(text: "Recompensas", press: () {}),
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
                  (index) => RewardCard(
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

class RewardCard extends StatelessWidget {
  const RewardCard({
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
            width: 76,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.12),
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(width: 1.5, color: kSecondaryColor)
                    ),
                    child: SvgPicture.asset(
                      icon,
                      //color: kPrimaryColor,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
