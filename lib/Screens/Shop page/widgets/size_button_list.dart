import 'package:flutter/material.dart';

class SizeButtonList extends StatefulWidget {
  final List<String> sizes;
  final Function(String) onSizeSelected;

  const SizeButtonList(
      {Key? key, required this.sizes, required this.onSizeSelected})
      : super(key: key);

  @override
  _SizeButtonListState createState() => _SizeButtonListState();
}

class _SizeButtonListState extends State<SizeButtonList> {
  String? selectedSize;

  @override
  void initState() {
    super.initState();
    selectedSize = widget.sizes.isNotEmpty ? widget.sizes[0] : null;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8, // Spacing between buttons
      runSpacing: 8, // Spacing between rows
      children: widget.sizes.map((size) {
        return ElevatedButton(
          onPressed: () {
            selectedSize = size;
            widget.onSizeSelected(size);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
            selectedSize == size ? const Color(0xFFFA7189) : Colors.white,
            foregroundColor:
            selectedSize == size ? Colors.white : const Color(0xFFFA7189),
            side: const BorderSide(color: Color(0xFFFA7189)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            textStyle: const TextStyle(fontSize: 14),
          ),
          child: Text(size),
        );
      }).toList(),
    );
  }
}
