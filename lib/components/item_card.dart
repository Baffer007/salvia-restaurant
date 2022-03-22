import 'package:flutter/material.dart';
import 'package:salvia_kafe/details/details_screen.dart';

import '../constants.dart';
import '../models/product.dart';


class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key? key, required this.product, required this.press,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(product: product),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(

              padding: EdgeInsets.all(bDefaultPadding),
              child: Hero(
                tag: "${product.id}",
                  child: Image.asset(product.image)),
              // For demo we use fixed height and width
              // Now we don't need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: bDefaultPadding / 4),
            child: Text(
              product.title,
              style: TextStyle(color: bTextLightColor),
            ),
          ),
          Text(
            "${product.price}sum",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
