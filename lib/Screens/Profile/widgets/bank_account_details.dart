import 'package:flutter/material.dart';

Widget bankAccountDetails() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bank Account Details",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Bank Account Number',
            hintText: '204356XXXXXXX',
            // prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Account Holder’s Name',
            hintText: 'Abhiraj Sisodiya',
            // prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'IFSC Code',
            hintText: 'SBIN00428',
            // prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    ),
  );
}
