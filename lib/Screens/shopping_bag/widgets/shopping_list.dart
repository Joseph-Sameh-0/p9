import 'package:flutter/material.dart';

import '../../../Model/Product.dart';
import 'bag_card.dart';

Widget shoppingList(List<Product> bagProducts) {
  return Scrollbar(
    thickness: 8,
    radius: Radius.circular(20),
    interactive: true,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: ListView.separated(
        itemCount: bagProducts.length,
        // shrinkWrap: true,
        itemBuilder: (context, index) {
          return bagCard(bagProducts[index], context);
        },
        separatorBuilder: (context, index) {
          return const Divider(); // Add a divider between items
          // return const SizedBox(
          //     height: 16); // Add a divider between items
        },
      ),
    ),
  );
}
