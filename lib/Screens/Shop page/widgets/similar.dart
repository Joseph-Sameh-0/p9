import 'package:flutter/material.dart';

import '../../../Model/Product.dart';

import '../../Home Screen/Widgets/productListView.dart';
import '../../trending_products/widgets/products_top_bar.dart';

Widget similar() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          "Similar To",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      productsTopBar(),
      productListView(productsList)
    ],
  );
}
List<Product> productsList = [
  Product(["assets/images/products/product1.png"], 'Women Printed Kurta',
      "Neque porro quisquam est qui dolorem ipsum quia", 2499, 40, 56890, 4),
  Product(["assets/images/products/product2.png"], 'HRX by Hrithik Roshan',
      "Neque porro quisquam est qui dolorem ipsum quia", 4999, 50, 344567, 4.5),
  Product(
      ["assets/images/products/product3.png"],
      'Philips BHH880/10',
      "Hair Straightening Brush With Keratin Infused Bristles (Black).",
      1999,
      50,
      646776,
      3.5),
  Product(
      ["assets/images/products/product4.png"],
      'TITAN Men Watch- 1806N',
      "This Titan watch in Black color is I wanted to buy for a long time",
      3500,
      60,
      15007,
      5),
  Product(["assets/images/products/product5.png"], 'IWC Schaffhausen',
      "2021 Pilot's Watch \"SIHH 2019\" 44mm", 1599, 60, 56890, 4),
  Product(["assets/images/products/product6.png"], 'HRX by Hrithik Roshan',
      "Neque porro quisquam est qui dolorem ipsum quia", 4999, 50, 344567, 4.5),
  Product(
      ["assets/images/products/product7.png"],
      'Philips BHH880/10',
      "Hair Straightening Brush With Keratin Infused Bristles (Black).",
      1999,
      50,
      646776,
      3.5),
  Product(
      ["assets/images/products/product8.png"],
      'TITAN Men Watch- 1806N',
      "This Titan watch in Black color is I wanted to buy for a long time",
      3500,
      60,
      15007,
      5),
  Product(
      ["assets/images/products/product9.png"],
      'TITAN Men Watch- 1806N',
      "This Titan watch in Black color is I wanted to buy for a long time",
      3500,
      60,
      15007,
      5),
];
