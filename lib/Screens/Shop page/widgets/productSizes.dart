import 'package:flutter/material.dart';

import 'size_button_list.dart';

class ProductSizes extends StatefulWidget {
  const ProductSizes({super.key});

  @override
  State<ProductSizes> createState() => _ProductSizesState();
}

class _ProductSizesState extends State<ProductSizes> {
  String? _size = sizes[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Size: $_size"),
            SizeButtonList(
              sizes: sizes,
              onSizeSelected: (size) {
                setState(() {
                  _size = size;
                });
                print('Selected size: $_size');
              },
            ),
          ],
        ),
      ),
    );
  }
}

List<String> sizes = [
  '6 UK',
  '7 UK',
  '8 UK',
  '9 UK',
  '10 UK',
  '11 UK',
  '12 UK'
];

