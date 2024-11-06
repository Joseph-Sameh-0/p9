import 'package:flutter/material.dart';
import 'package:p9/Screens/Home%20Screen/Widgets/product_card.dart';

import '../../../Model/Product.dart';

Widget productListView(List<Product> products) {
  return SizedBox(
    height: 350,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      padding: const EdgeInsets.only(left: 8),
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },
    ),
  );
}
