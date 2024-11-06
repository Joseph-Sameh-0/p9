import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  bool _obscureText = true;

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
                      "Create an\naccount!",
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
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Username or Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(
                            _obscureText ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                        labelText: 'Password',
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: confirmPasswordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(
                            _obscureText ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                        labelText: 'ConfirmPassword',
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text("By clicking the Register button, you agree\nto the public offer")
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
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Text("Create Account"),
                  )
              ),
              const SizedBox(
                height: 48,
              ),
              Column(
                children: [
                  const Text("- OR Continue with -"),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Stack(
                            children: [
                              SvgPicture.asset('assets/icons/red_cycle.svg'),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Image.asset(
                                  "assets/images/google.png",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Stack(
                            children: [
                              SvgPicture.asset('assets/icons/red_cycle.svg'),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: SvgPicture.asset('assets/icons/apple.svg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Stack(
                            children: [
                              SvgPicture.asset('assets/icons/red_cycle.svg'),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 10),
                                child:
                                SvgPicture.asset('assets/icons/facebook.svg'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("I Already Have an Account"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.red,
                            decorationColor: Colors.red,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
