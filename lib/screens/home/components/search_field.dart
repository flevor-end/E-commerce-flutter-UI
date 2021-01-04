import 'package:flutter/material.dart';
import 'package:masdamas/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 235,
      height: 40,
      decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.14),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: kSecondaryColor)),
      child: TextField(
        onChanged: (value) {
          //search value
        },
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Que Buscas?",
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 9,
            )),
      ),
    );
  }
}
