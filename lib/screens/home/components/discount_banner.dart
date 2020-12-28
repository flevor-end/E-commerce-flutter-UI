import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 90,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(
        horizontal: (20),
        vertical: (15),
      ),
      decoration: BoxDecoration(
          color: Color(0xFFFFF7110), borderRadius: BorderRadius.circular(20)),
      child: Text.rich(
        TextSpan(
          style:
              TextStyle(color: Colors.white, decoration: TextDecoration.none),
          children: [
            TextSpan(text: "Tecnologia\n"),
            TextSpan(
                text: "Promociones del 20% dto",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
