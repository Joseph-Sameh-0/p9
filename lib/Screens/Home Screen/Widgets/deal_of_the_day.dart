import 'package:flutter/material.dart';

import '../../../Model/Product.dart';
import 'offer.dart';
import 'productListView.dart';
import 'special_offers.dart';
import 'view_product_button.dart';

class DealOfTheDay extends StatelessWidget {
  final Function(int) onNavigate;

  const DealOfTheDay({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        viewProductButton("Deal of the Day", Icons.access_time, 0xFF4392F9,
            "22h 55m 20s remaining", context, "/shop_page",null),
        productListView(dealOfTheDay),
        specialOffers("assets/images/special_offers.png", "Special Offers 😱",
            "We make sure you get the\noffer you need at best prices"),
        offer(),
        viewProductButton("Trending Products ", Icons.date_range, 0xFFFD6E87,
            "Last Date 29/02/22", context, "/trend",onNavigate),
        productListView(trendingProducts),
      ],
    );
  }
}



List<Product> dealOfTheDay = [
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
];


List<Product> trendingProducts = [
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
