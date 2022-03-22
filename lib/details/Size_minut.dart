import 'package:flutter/material.dart';
import 'package:salvia_kafe/models/product.dart';

import '../constants.dart';

class SizeMin extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final Product product;
  const SizeMin({Key? key, required this.product, required this.color, this.isSelected = false,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: bDefaultPadding / 4,
        left: bDefaultPadding / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color:isSelected ? color: Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color:color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
