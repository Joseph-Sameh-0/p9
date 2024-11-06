import 'package:flutter/material.dart';
import 'package:p9/Screens/Home%20Screen/home_page.dart';
import 'package:p9/Screens/get_started.dart';
import 'package:p9/Screens/main_screen.dart';
import 'package:p9/Screens/trending_products/trending_products.dart';

import 'Screens/Profile/profile.dart';
import 'Screens/Shop page/shop_page.dart';
import 'Screens/flow1/auth/forgot_password.dart';
import 'Screens/flow1/auth/login.dart';
import 'Screens/flow1/auth/signup.dart';
import 'Screens/flow1/intro.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stylish',
      // theme: ThemeData(primarySwatch: Colors.orange),
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/intro': (context) => const Intro(),
        '/login': (context) => Login(),
        '/signup': (context) => const Signup(),
        '/forgot_password': (context) => ForgotPassword(),
        '/get_started': (context) => const GetStarted(),
        '/main': (context) => const MainScreen(),
        '/shop_page': (context) => ShopPage(),
        // '/home': (context) => const HomePage(),
        // '/trend': (context) => const TrendingProducts(),
        // '/profile': (context) => Profile(),
      },
    );
  }
}
