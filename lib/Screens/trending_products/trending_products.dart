import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import '../Home Screen/Widgets/search.dart';
import 'widgets/products.dart';
import 'widgets/products_top_bar.dart';

class TrendingProducts extends StatelessWidget {
  final Function(int) onNavigate;

  const TrendingProducts({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
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
            child:
            IconButton(
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          searchBar(),
          productsTopBar(),
          products(),
        ],
      ),
    );
  }
}




