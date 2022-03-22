import 'package:flutter/material.dart';
import 'package:salvia_kafe/models/product.dart';

import '../constants.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: bDefaultPadding),
      child: Text(product.description,style: TextStyle(height: 1.5,) ,),
    );
  }
}
