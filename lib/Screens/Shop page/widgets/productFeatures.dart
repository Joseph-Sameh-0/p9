import 'package:flutter/material.dart';

Widget productFeatures() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        feature(Icons.location_on, "Nearest Store"),
        feature(Icons.lock, "VIP"),
        feature(Icons.recycling, "Return policy"),
      ],
    ),
  );
}

Widget feature(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF828282)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        child: Row(
          children: [
            Icon(icon, color: Color(0xFF828282)),
            Text(text, style: TextStyle(color: Color(0xFF828282)))
          ],
        ),
      ),
    ),
  );
}
