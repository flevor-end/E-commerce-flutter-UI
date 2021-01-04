import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masdamas/constants.dart';
import 'package:masdamas/screens/home/components/section_title.dart';

class ToTheHand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/ALAMANO1.svg", "text": "Mi Agenda"},
      {"icon": "assets/icons/ALAMANO2.svg", "text": "Transporte \nPublico"},
      {"icon": "assets/icons/ALAMANO3.svg", "text": "Transporte \nPrivado"},
      {"icon": "assets/icons/ALAMANO4.svg", "text": "Domicilios"},
      //{"icon": "assets/icons/Discover.svg", "text": "mas"},
    ];

    return Column(
      children: [
        SectionTitle(text: "A la Mano", press: () {}),
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
                  (index) => ToTheHandCard(
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

class ToTheHandCard extends StatelessWidget {
  const ToTheHandCard({
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
            width: 75,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        //color: kPrimaryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1.5, color: kSecondaryColor)),
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
