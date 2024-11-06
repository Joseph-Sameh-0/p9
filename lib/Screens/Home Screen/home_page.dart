import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

import '../../Model/feature.dart';
import 'Widgets/all_featured_image_list.dart';
import 'Widgets/all_featured_top_bar.dart';
import 'Widgets/deal_of_the_day.dart';
import 'Widgets/image_card_carousel.dart';
import 'Widgets/new_arrivals.dart';
import 'Widgets/search.dart';
import 'Widgets/sponsored.dart';

class HomePage extends StatelessWidget {
  final Function(int) onNavigate;

  const HomePage({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFFDFDFD),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDFDFD),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
        title: SvgPicture.asset(
          "assets/icons/logo_blue.svg",
          width: 140,
        ),
        centerTitle: true,
        elevation: 2,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
                onPressed: () {
                  // Navigator.pushNamed(context, "/profile");
                  onNavigate(4);
                },
                icon: Image.asset("assets/images/profile_pic_in_home.png",
                    width: 50)),
          ),
        ],
        shadowColor: Colors.black,
        toolbarHeight: 70,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            searchBar(),
            allFeaturedTopBar(),
            allFeaturedImageList(myFeatures),
            ImageCardCarousel(imageUrls: homeCards),
            DealOfTheDay(onNavigate: onNavigate),
            newArrivals(screenWidth),
            sponsored(),
            // const SizedBox(
            //   height: 40,
            // ),
          ],
        ),
      ),
    );
  }
}

List<Feature> myFeatures = [
  Feature("Beauty", "assets/images/features/Beauty.png"),
  Feature("Fashion", "assets/images/features/Fashion.png"),
  Feature("Kids", "assets/images/features/Kids.png"),
  Feature("Mens", "assets/images/features/Mens.png"),
  Feature("Women's", "assets/images/features/Womens.png"),
  Feature("Gifts", "assets/images/features/Gifts.png"),
];

List<String> homeCards = [
  'assets/images/card.png',
  'assets/images/card.png',
  'assets/images/card.png',
];
