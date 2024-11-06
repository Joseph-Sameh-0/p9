import 'package:flutter/material.dart';

class ProductOptions extends StatelessWidget {
  const ProductOptions({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double optionWidth = screenWidth/2 - 12;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          option(Icons.remove_red_eye_outlined, "View Similar", optionWidth),
          option(Icons.phone_android, "Add to Compare", optionWidth),
        ],
      ),
    );
  }
}

Widget option(IconData icon, String text, double width) {
  return MaterialButton(
    onPressed: (){},
    padding: EdgeInsets.zero,
    child: Container(
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Row(
          children: [
            Icon(icon, color: Colors.black),
            SizedBox(width: 10,),
            Text(text, style: TextStyle(color: Colors.black))
          ],
        ),
      ),
    ),
  );
}
