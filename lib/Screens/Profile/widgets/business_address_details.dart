import 'package:flutter/material.dart';

import 'state_selection_form_field.dart';

Widget businessAddressDetails() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Business Address Details",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Pincode',
            hintText: '450116',
            // prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Address',
            hintText: '216 St Paul\'s Rd,',
            // prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'City',
            hintText: 'London',
            // prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        StateSelectionFormField(states: states),
        SizedBox(height: 20),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Country',
            hintText: 'United Kingdom',
            // prefixIcon: Icon(Icons.email),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),

      ],
    ),
  );
}

final List<String> states = [
  'Alabama',
  'Alaska',
  'Arizona',
  'Arkansas',

];