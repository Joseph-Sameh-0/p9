import 'package:flutter/material.dart';
import 'package:p9/Screens/Shop%20page/widgets/productActionButtons.dart';
import 'package:p9/Screens/Shop%20page/widgets/productDeliveryTime.dart';
import 'package:p9/Screens/Shop%20page/widgets/productImages.dart';
import 'package:p9/Screens/Shop%20page/widgets/productOptions.dart';
import 'package:p9/Screens/Shop%20page/widgets/productSizes.dart';
import 'package:p9/Screens/Shop%20page/widgets/productSpecs.dart';
import 'package:p9/Screens/Shop%20page/widgets/similar.dart';
import 'package:p9/Screens/main_screen.dart';

import '../../Model/Product.dart';

class ShopPage extends StatelessWidget {
  final Function(int)? onNavigate;

  const ShopPage({super.key, this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          MaterialButton(
            onPressed: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MainScreen(index: 2,)),
              );
            },
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImages(imageUrls: product.images),
            ProductSizes(),
            productSpecs(product),
            productActionButtons(context),
            productDeliveryTime(),
            ProductOptions(),
            similar(),
          ],
        ),
      ),
    );
  }
}

List<String> productImages = [
  'assets/images/products/product1.png',
  'assets/images/products/product2.png',
  'assets/images/products/product3.png',
  'assets/images/products/product4.png',
  'assets/images/products/product5.png',
  'assets/images/products/product6.png',
  'assets/images/products/product7.png',
  'assets/images/products/product8.png',
  'assets/images/products/product9.png',
];

Product product = Product(productImages, 'IWC Schaffhausen',
    "2021 Pilot's Watch \"SIHH 2019\" 44mm", 1599, 60, 56890, 4);
