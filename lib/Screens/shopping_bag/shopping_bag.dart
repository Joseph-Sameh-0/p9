import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:p9/Screens/Shop%20page/shop_page.dart';

import '../../Model/Product.dart';
import 'widgets/address_section.dart';
import 'widgets/shopping_list.dart';

class ShoppingBag extends StatelessWidget {
  void Function(int) onNavigate;

  ShoppingBag({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shopping Bag",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            addressSection(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: const Text(
                "Shopping List",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            // Container(color: Colors.red,height: 20,),
            Expanded(
              child: shoppingList(bagProducts),
            )
          ],
        ),
      ),
    );
  }
}


List<Product> bagProducts = [
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


