import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,


  });

}

List<Product> products = [
  Product(
    id: 1,
    title: "Pilaf",
    price: 20000,
    size: 25,
    description:" Masalligʻi va tayyorlanish uslubi boʻyicha xilma-xil\nturlarga boʻlinadi va har bir mamlakatda oʻzgacha\ntarzda tayyorlanadi. Taom asosini guruch tashkil etadi.\nUshbu masalliqdan tashqari yogʻ, goʻsht, sabzi,\npiyoz va boshqa masalliqlar ishlatiladi. "
        ,
    image: "assets/images/image03.png",
    color: Color(0xFF000000),

  ),
  Product(
    id: 2,
    title: "Kazan kebab",
    price: 45000,
    size: 30,
    description:" dummyText",
    image: "assets/images/image04.png",
    color: Color(0xFF635099),

  ),
  Product(
    id: 3,
    title: "Nuhot shurak",
    price: 22000,
    size: 35,
    description:" dummyText",
    image: "assets/images/image05.png",
    color: Color(0xFF999566),

  ),
  Product(
    id: 2,
    title: "Stew",
    price: 50000,
    size: 12,
    description:" dummyText",
    image: "assets/images/image06.png",
    color: Color(0xFF3D82AE),

  ),
  Product(
    id: 2,
    title: "Office Code",
    price: 234,
    size: 12,
    description:" dummyText",
    image: "assets/images/image1.png",
    color: Color(0xFF3D82AE),

  ),
  Product(
    id: 2,
    title: "Office Code",
    price: 234,
    size: 12,
    description:" dummyText",
    image: "assets/images/image1.png",
    color: Color(0xFF3D82AE),

  ),
  Product(
    id: 2,
    title: "Office Code",
    price: 234,
    size: 12,
    description:" dummyText",
    image: "assets/images/image1.png",
    color: Color(0xFF3D82AE),

  ),
  Product(
    id: 2,
    title: "Office Code",
    price: 234,
    size: 12,
    description:" dummyText",
    image: "assets/images/image1.png",
    color: Color(0xFF3D82AE),

  ),
  Product(
    id: 2,
    title: "Office Code",
    price: 234,
    size: 12,
    description:" dummyText",
    image: "assets/images/image1.png",
    color: Color(0xFF3D82AE),

  ),

];