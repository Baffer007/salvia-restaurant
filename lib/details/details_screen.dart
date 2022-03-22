import 'package:flutter/material.dart';
import 'package:salvia_kafe/constants.dart';
import 'package:salvia_kafe/details/body1.dart';
import 'package:salvia_kafe/models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyPage1(product: product),
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.keyboard_backspace,),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,),),
          const SizedBox(width: bDefaultPadding/2,),
        ],
      ),
      backgroundColor: product.color,
    );
  }
}
