import 'package:flutter/material.dart';

import '../constants.dart';



class CategoriesState extends StatefulWidget {
  const CategoriesState({Key? key}) : super(key: key);


  @override
  State<CategoriesState> createState() => _CategoriesStateState();
}

List<String> categories = [
  "Assorted","Bakery","Drinks","Kebabs","Lettuce","Side","Soups",

];
int selectedIndex = 0;

class _CategoriesStateState extends State<CategoriesState> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: bDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,

            itemBuilder: (context,index)=> buildCategory(index)),
      ),
    );
  }
  Widget buildCategory(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: bDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],style: TextStyle(fontWeight: FontWeight.bold,color: selectedIndex == index ?  bTextColor : bTextLightColor),),
            Container(
              margin: EdgeInsets.only(top: bDefaultPadding/4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
