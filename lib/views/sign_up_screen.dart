import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/home_screen.dart';
import 'package:food_delivery_app/views/login_screen.dart';

import '../common/extensions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24.0,
          right: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 82.0),
                child: Text(
                  "Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Metropolis",
                    height: 1.5,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF000000),
                    fontSize: 30,
                  ),
                ),
              ),
              const Text(
                "Add your details to sign up",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Metropolis",
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF7C7D7E),
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        hintText: "Name",
                        hintStyle: const TextStyle(color: Color(0xFFB6B7B7)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        fillColor: const Color(0xFFF2F2F2),
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        hintText: "Email",
                        hintStyle: const TextStyle(color: Color(0xFFB6B7B7)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        fillColor: const Color(0xFFF2F2F2),
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        hintText: "Mobile No",
                        hintStyle: const TextStyle(color: Color(0xFFB6B7B7)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        fillColor: const Color(0xFFF2F2F2),
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        hintText: "Address",
                        hintStyle: const TextStyle(color: Color(0xFFB6B7B7)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        fillColor: const Color(0xFFF2F2F2),
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        hintText: "Password",
                        hintStyle: const TextStyle(color: Color(0xFFB6B7B7)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        fillColor: const Color(0xFFF2F2F2),
                        filled: true,
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        hintText: "Confirm Password",
                        hintStyle: const TextStyle(color: Color(0xFFB6B7B7)),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(34),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        fillColor: const Color(0xFFF2F2F2),
                        filled: true,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              GestureDetector(
                onTap: () {

                  NavigatorClass.navigatorPushRoute(context,const HomeScreen(),);
                },
                child: Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  // margin: const EdgeInsets.symmetric(horizontal: 24),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFC6011),
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      height: 1.5,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: RichText(
                  text: TextSpan(
                    text: "Already have an Account?",
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: "Monkey",
                      fontWeight: FontWeight.normal,
                      color: Color(0xFFfc6012),
                    ),
                    children: [
                      TextSpan(
                        text: "   Login",
                        style: const TextStyle(
                          color: Color(0xFF4a4b4d),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            NavigatorClass.navigatorPushRoute(context,const LoginScreen(),);
                          },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
