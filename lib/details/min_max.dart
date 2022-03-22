import 'package:flutter/material.dart';
import 'package:salvia_kafe/models/product.dart';

import '../constants.dart';
import 'Size_minut.dart';

class MinMax extends StatelessWidget {
  final Product product;
  const MinMax({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget> [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(

                children: <Widget>[
                  Text("Max"),
                  SizedBox(width: bDefaultPadding/2,),
                  Text("Middle"),
                  SizedBox(width: bDefaultPadding/2,),
                  Text("Min"),
                ],
              ),
              Row(

                children: <Widget>[
                  SizeMin(product: product,
                    isSelected: true,
                    color: Color(0xFF356C95),),
                  SizedBox(width: bDefaultPadding/2,),
                  SizeMin(product: product,
                    color: Color(0xFFF8C078),),
                  SizedBox(width: bDefaultPadding/2,),
                  SizeMin(product: product,
                    color: Color(0xFFA29898),),
                ],
              ),


            ],
          ),
        ),
        Expanded(
          child: RichText(text: TextSpan(
              style: TextStyle(color: bTextColor),
              children: [
                TextSpan(text: "Minutes\n"),
                TextSpan(text: "${product.size} min",style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold)),

              ]
          )),
        ),
      ],
    );
  }
}
