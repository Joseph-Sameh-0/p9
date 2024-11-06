import 'package:flutter/material.dart';
import 'package:p9/Screens/flow1/widgets/intro_widget_1.dart';
import 'package:p9/Screens/flow1/widgets/intro_widget_2.dart';
import 'package:p9/Screens/flow1/widgets/intro_widget_3.dart';
import 'package:p9/Screens/flow1/widgets/page_indicator.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  int initialPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: RichText(
            text: TextSpan(
              text: "${initialPage + 1}",
              style: const TextStyle(color: Colors.black, fontSize: 18),
              children: const [
                TextSpan(text: "/3", style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
        ),
        actions: [
          MaterialButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: const Text("Skip", style: TextStyle(fontSize: 18)))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  initialPage = index;
                });
              },
              children: const [
                IntroWidget1(),
                IntroWidget2(),
                IntroWidget3(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: initialPage > 0
                        ? MaterialButton(
                            onPressed: () {
                              if (_pageController.page! > 0) {
                                _pageController.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease);
                              }
                            },
                            child: const Text("Prev"))
                        : const Text("")),
                Expanded(
                    child: PageIndicator(
                        currentPage: initialPage + 1, totalPages: 3)),
                Expanded(
                  child: MaterialButton(
                      onPressed: () {
                        if (_pageController.page! < 2) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        } else {
                          Navigator.pushReplacementNamed(context, '/login');
                        }
                      },
                      child: initialPage < 2
                          ? const Text("Next")
                          : const Text("Get Started")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
