import 'package:flutter/material.dart';

Widget newArrivals(double screenWidth) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(8),
      child: Column(
        children: [
          SizedBox(
              height: 200,
              width: screenWidth,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                  child: Image.asset(
                    "assets/images/hot_summer.png",
                    fit: BoxFit.cover,
                  ))),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New Arrivals",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text("Summer’ 25 Collections"),
                    ],
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color(0xffF83758),
                      side: const BorderSide(color: Colors.white),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      textStyle: const TextStyle(fontSize: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('View all', style: TextStyle(color: Colors.white)),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
