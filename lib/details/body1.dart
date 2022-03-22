import 'package:flutter/material.dart';
import 'package:salvia_kafe/components/like_page.dart';
import 'package:salvia_kafe/constants.dart';
import 'package:salvia_kafe/details/Size_minut.dart';
import 'package:salvia_kafe/details/cart_counter.dart';
import 'package:salvia_kafe/details/description.dart';
import 'package:salvia_kafe/details/min_max.dart';
import 'package:salvia_kafe/details/product_title_with_image.dart';
import 'package:salvia_kafe/models/product.dart';

class BodyPage1 extends StatelessWidget {
  const BodyPage1({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: bDefaultPadding,
                      right: bDefaultPadding),
                  height: 500,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      MinMax(product: product),
                      SizedBox(

                        height: bDefaultPadding/2,
                      ),

                      Description(
                        product: product,
                      ),
                      SizedBox(

                        height: bDefaultPadding/2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CartCounter(),
                          LikePage(),
                        ],
                      ),
                      SizedBox(

                        height: bDefaultPadding/2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: bDefaultPadding),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: IconButton(
                                icon: Icon(
                                  Icons.shopping_cart_outlined,
                                  color: product.color,
                                ),
                                onPressed: () {},
                              ),
                              height: 50,
                              width: 58,
                              margin: EdgeInsets.only(right: bDefaultPadding),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                border: Border.all(color: product.color),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(



                                height: 50,
                                child: TextButton(
                                  onPressed: () {},

                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(product.color),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(18),
                                          ),
                                      ),
                                  ),

                                  child: Text(
                                    "Buy Now".toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
