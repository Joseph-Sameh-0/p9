import 'package:flutter/material.dart';

Widget viewProductButton(String title, IconData icon, int color,
    String description, BuildContext context, String direction,Function(int)? onNavigate) {

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Container(
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(color: Colors.white, fontSize: 22)),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(icon, color: Colors.white),
                        const SizedBox(width: 5),
                        Text(description,
                            style: const TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                )),
            OutlinedButton(
              onPressed: () {
                if (onNavigate != null){
                  onNavigate(1);
                }
                else {
                  Navigator.pushNamed(context, direction);
                }
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: const BorderSide(color: Colors.white),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
      ),
    ),
  );
}
