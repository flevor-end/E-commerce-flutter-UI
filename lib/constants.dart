import 'package:flutter/material.dart';
import 'package:masdamas/size_config.dart';

const kPrimaryColor = Color(0xFFFF7012);
const kPrimaryLightColor = Color(0xFFFFECDF);
//const kPrimaryGradientColor = LinearGradient(
//begin: Alignment.topLeft,
//end: Alignment.bottomRight,
//colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
//);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Por favor introduzca su correo electrónico";
const String kInvalidEmailError = "introduzca un correo electrónico válido";
const String kPassNullError = "Por favor, introduzca su contraseña";
const String kShortPassError = "La contraseña es demasiado corta";
const String kMatchPassError = "Las contraseñas no coinciden";
const String kNamelNullError = "Por favor, escriba su nombre";
const String kPhoneNumberNullError =
    "Por favor, introduzca su número de teléfono";
const String kAddressNullError = "Ingrese su dirección";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
