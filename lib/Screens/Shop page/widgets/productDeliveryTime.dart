import 'package:flutter/material.dart';

Widget productDeliveryTime() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        shape: BoxShape.rectangle,
          color: Color(0xFFFFCCD5),
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Delivery in",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Text("1 within Hour",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        ],
      ),
    ),
  );
}
