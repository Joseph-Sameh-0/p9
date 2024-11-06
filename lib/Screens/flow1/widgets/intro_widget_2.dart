import 'package:flutter/material.dart';

class IntroWidget2 extends StatelessWidget {
  const IntroWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 300,
                child: Image.asset('assets/images/sales_consulting.png')),
            const SizedBox(
              height: 8,
            ),
            const Text("Make Payment",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900)),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Amet minim mollit non deserunt ullamco est\n sit aliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit.",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
