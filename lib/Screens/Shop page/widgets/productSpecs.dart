import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../Model/Product.dart';
import 'productFeatures.dart';

Widget productSpecs(Product product) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        Text(product.description, style: TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        Row(
          children: [
            RatingBar.builder(
              initialRating: product.rating,
              // minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              ignoreGestures: true,
              itemSize: 20,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            // Placeholder rating
            const SizedBox(width: 8),
            Text('(${product.buyers})'),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              '₹${product.price}',
              style: const TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                  fontSize: 18),
            ),
            const SizedBox(width: 8),
            Text(
              '₹${product.price * product.discount / 100}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),
            ),
            const SizedBox(width: 8),
            Text(
              '${product.discount}% Off',
              style: const TextStyle(color: Colors.red, fontSize: 18),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text("Product Details",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        Text(
            "Perhaps the most iconic sneaker of all-time, this original \"Chicago\"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More"),
        productFeatures(),
      ],
    ),
  );
}
