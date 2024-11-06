import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  final TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Forgot\npassword?",
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                )),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: userNameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded),
                    labelText: 'Enter your email address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                    "* We will send you a message to set or reset\nyour new password")
              ],
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
              width: 300,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                color: Colors.red,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text("Submit"),
              )),
        ],
      ),
    ));
  }
}
