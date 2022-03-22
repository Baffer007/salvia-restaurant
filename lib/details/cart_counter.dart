

import 'package:flutter/material.dart';
import 'package:salvia_kafe/constants.dart';

class CartCounter extends StatefulWidget {

  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  @override
  int numOfItems = 1;
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButtom(
          icon: Icons.remove,

            OnPressed: (){
           if (numOfItems >1){
             setState(() {
               numOfItems--;
             });
           }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: bDefaultPadding/2),
          child: Text(numOfItems.toString().padLeft(2,"0"),style: Theme.of(context).textTheme.headline6 ,),
        ),
        
        buildOutlineButtom(icon: Icons.add, OnPressed: (){
          setState(() {
            numOfItems++;
          });
        }),

      ],
    );
  }
}

SizedBox buildOutlineButtom({required IconData icon,   required Null Function() OnPressed}){
  return SizedBox(
    width: 40,
    height: 32,
    child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.0),
        ),),


      onPressed: OnPressed, child: Icon(icon),),
  );
}
