import 'package:flutter/material.dart';

Widget offer() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 200,
      child: Stack(
        children: [
          Image.asset("assets/images/card_background.png", fit: BoxFit.cover),
          Row(
            children: [
              Expanded(
                child: Image.asset("assets/images/products/heels.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Flat and Heels",
                      style: TextStyle(fontSize: 22),
                    ),
                    Text("Stand a chance to get rewarded"),
                    SizedBox(height: 16),
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
                          Text('View all',
                              style: TextStyle(color: Colors.white)),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
