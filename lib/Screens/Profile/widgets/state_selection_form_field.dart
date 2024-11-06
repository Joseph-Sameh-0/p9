import 'package:flutter/material.dart';

class StateSelectionFormField extends StatefulWidget {
  final List<String> states ;

  const StateSelectionFormField({super.key, required this.states});

  @override
  State<StateSelectionFormField> createState() => _StateSelectionFormFieldState();
}

class _StateSelectionFormFieldState extends State<StateSelectionFormField> {
  String? _selectedState;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        labelText: 'State',
        hintText: 'Select your state',border: OutlineInputBorder(),
      ),
      value: _selectedState,
      onChanged: (String? newValue) {
        setState(() {
          _selectedState = newValue;
        });
      },
      items: widget.states.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select your state';
        }
        return null;
      },
    );
  }
}
