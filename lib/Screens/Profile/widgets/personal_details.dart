import 'package:flutter/material.dart';

Widget personalDetails() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Personal Details",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email Address',
            hintText: 'Enter your email',
            prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.emailAddress, // Set keyboard type
          validator: (value) {
            // Add email validation if needed
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }
            // You can add more specific email validation logic here
            return null;
          },
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password',
            prefixIcon: Icon(Icons.lock),
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.visibility_off), // Add visibility toggle
          ),
          obscureText: true, // Hide password by default
          validator: (value) {
            // Add password validation if needed
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            // You can add more specific password validation logic here
            return null;
          },
        ),
        Align(
          alignment: Alignment.topRight,
          child: MaterialButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            child: Text(
              "Change Password",
              style: TextStyle(color: Colors.red),
            ),
          ),
        )
      ],
    ),
  );
}
