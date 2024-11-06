import 'package:flutter/material.dart';
import 'package:p9/Screens/trending_products/trending_products.dart';

import 'Home Screen/home_page.dart';
import 'Profile/profile.dart';
import 'shopping_bag/shopping_bag.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, this.index});

  final int? index;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _selectedIndex;
  // List of pages for each BottomNavigationBar index
  // Pass a callback to each page to allow changing the selected index
  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages.addAll([
      HomePage(onNavigate: _onItemTapped),
      TrendingProducts(onNavigate: _onItemTapped),
      // ShopPage(onNavigate: _onItemTapped),
      // Profile(onNavigate: _onItemTapped),
      ShoppingBag(onNavigate: _onItemTapped),
      // Profile(onNavigate: _onItemTapped),
      Scaffold(),
      Profile(onNavigate: _onItemTapped),
    ]);
    if (widget.index != null) {
      _selectedIndex = widget.index!;
    } else {
      _selectedIndex = 0;
    }
  }

  // Callback function to update selected index
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _pages[_selectedIndex],
      // Display selected page based on index
      floatingActionButton: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            bottom: 30,
            child: FloatingActionButton(
              onPressed: () {
                _onItemTapped(2); // Set index 2 for the cart page
              },
              backgroundColor:
                  _selectedIndex == 2 ? const Color(0xFFEB3030) : Colors.white,
              shape: const CircleBorder(),
              child: Icon(Icons.shopping_cart_outlined,
                  color: _selectedIndex == 2 ? Colors.white : Colors.black),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        notchMargin: 8.0,
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            if (index != 2) {
              _onItemTapped(index);
            }
          },
          iconSize: 24,
          selectedItemColor: const Color(0xFFEB3030),
          unselectedItemColor: Colors.black,
          unselectedFontSize: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.circle, color: Colors.transparent),
              label: '', // Placeholder for spacing
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Setting',
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

// // Define each page as a separate widget and accept a callback to navigate
// class HommePage extends StatelessWidget {
//   final Function(int) onNavigate;
//
//   const HommePage({Key? key, required this.onNavigate}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () => onNavigate(1), // Example: navigate to Wishlist
//         child: Text("Go to Wishlist"),
//       ),
//     );
//   }
// }
//
// class WishlistPage extends StatelessWidget {
//   final Function(int) onNavigate;
//
//   const WishlistPage({Key? key, required this.onNavigate}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () => onNavigate(2), // Example: navigate to Search
//         child: Text("Go to Search"),
//       ),
//     );
//   }
// }
//
// class CartPage extends StatelessWidget {
//   final Function(int) onNavigate;
//
//   const CartPage({Key? key, required this.onNavigate}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () => onNavigate(3), // Example: navigate to Settings
//         child: Text("Go to Settings"),
//       ),
//     );
//   }
// }
//
// class SearchPage extends StatelessWidget {
//   final Function(int) onNavigate;
//
//   const SearchPage({Key? key, required this.onNavigate}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () => onNavigate(4), // Example: navigate to Home
//         child: Text("Go to Home"),
//       ),
//     );
//   }
// }
//
// class SettingsPage extends StatelessWidget {
//   final Function(int) onNavigate;
//
//   const SettingsPage({Key? key, required this.onNavigate}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () => onNavigate(0), // Example: navigate to Cart
//         child: Text("Go to Cart"),
//       ),
//     );
//   }
// }
