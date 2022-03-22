import 'package:flutter/material.dart';
import 'package:salvia_kafe/details/details_screen.dart';
import 'package:salvia_kafe/models/product.dart';

import '../constants.dart';
import 'categorries.dart';
import 'item_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: bDefaultPadding),
          child: Text("Recipe",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold)),
        ),
        CategoriesState(),
        Expanded  (
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: bDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: bDefaultPadding,
                crossAxisSpacing: bDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index)=> ItemCard(product: products[index],press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: products[index]))), ),),


              )
            ),
      ],
    );
  }
}
