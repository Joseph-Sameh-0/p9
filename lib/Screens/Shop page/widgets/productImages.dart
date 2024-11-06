import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  final List<String> imageUrls;

  const ProductImages({super.key, required this.imageUrls});

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              itemCount: widget.imageUrls.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                final image = widget.imageUrls[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          DotsIndicator(
            dotsCount: widget.imageUrls.length,
            position: _currentPage.toInt(),
            decorator: DotsDecorator(
              color: Colors.grey,
              // Inactive dot color
              activeColor: Colors.blue,
              // Active dot color
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
