import 'package:flutter/material.dart';
import 'package:masdamas/Models/products.dart';
import 'package:masdamas/screens/details/components/body.dart';
import 'components/custom_appbar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

//Necesitamos pasar nuestros productos al detalle
// y debemos usar el nombre de la ruta para poder crear el argumento

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
