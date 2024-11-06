import 'package:flutter/material.dart';

import 'widgets/bank_account_details.dart';
import 'widgets/business_address_details.dart';
import 'widgets/circular_profile_image.dart';
import 'widgets/personal_details.dart';

class Profile extends StatelessWidget {
  final Function(int) onNavigate;

  const Profile({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: CircularProfileImage(
                imagePath: 'assets/images/profile_image.png',
                size: 150.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            personalDetails(),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            businessAddressDetails(),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            bankAccountDetails(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color(0xffF83758),
                  side: const BorderSide(color: Colors.white),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: const TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
