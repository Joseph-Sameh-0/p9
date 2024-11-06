import 'package:flutter/material.dart';

import '../../../Model/feature.dart';

Widget allFeaturedImageList(List<Feature> items) {
  return SizedBox(
    height: 150,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(item.image),
              ),
              const SizedBox(height: 8),
              Text(item.title),
            ],
          ),
        );
      },
    ),
  );
}
