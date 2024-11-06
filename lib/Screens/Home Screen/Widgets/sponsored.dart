import 'package:flutter/material.dart';

Widget sponsored() {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Sponserd",
                style: TextStyle(fontSize: 22),
              ),
            ),
            Image.asset("assets/images/sponser.png"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "up to 50% Off",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
