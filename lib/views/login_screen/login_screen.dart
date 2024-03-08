import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/views/on_boarding_screen/on_boarding_screen_second.dart';
import 'package:food_delivery_app/views/password_screen/reset_password.dart';
import 'package:food_delivery_app/views/signup_screen/sign_up_screen.dart';

import '../../common/extensions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Metropolis",
                height: 1.5,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000000),
                fontSize: 30,
              ),
            ),
            const Text(
              "Add your details to login",
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
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      hintText: "Your Email",
                      hintStyle: const TextStyle(color: Color(0xFFB6B7B7)),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(34),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
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
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        color: Color(0xFFB6B7B7),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(34),
                        borderSide: const BorderSide(color: Colors.transparent),
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
                NavigatorClass.navigatorPushRoute(
                  context,
                  const OnBoardSecondScreen(),
                );
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
                  "Login",
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
              height: 35,
            ),
            GestureDetector(
              onTap: () {
                NavigatorClass.navigatorPushRoute(
                  context,
                  const ResetPasswordScreen(),
                );
              },
              child: const Text(
                "Forgot your password?",
                style: TextStyle(
                  fontFamily: "Metropolis",
                  height: 1.5,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF7C7D7E),
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "or Login With",
              style: TextStyle(
                fontFamily: "Metropolis",
                height: 1.5,
                fontWeight: FontWeight.w700,
                color: Color(0xFF7C7D7E),
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const LoginScreen(),
                //   ),
                // );
              },
              child: Container(
                height: 56,
                width: MediaQuery.of(context).size.width,
                // margin: const EdgeInsets.symmetric(horizontal: 24),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF367FC0),
                  borderRadius: BorderRadius.circular(34),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      Icons.facebook_sharp,
                      color: Color(0xFFFFFFFF),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Login with Facebook",
                      style: TextStyle(
                        fontFamily: "Metropolis",
                        height: 1.5,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const LoginScreen(),
                //   ),
                // );
              },
              child: Container(
                height: 56,
                width: MediaQuery.of(context).size.width,
                // margin: const EdgeInsets.symmetric(horizontal: 24),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFFDD4B39),
                  borderRadius: BorderRadius.circular(34),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FaIcon(
                      Icons.alternate_email,
                      color: Color(0xFFFFFFFF),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Login with Google",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Metropolis",
                        height: 1.5,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: RichText(
                text: TextSpan(
                  text: "Don't have an Account? ",
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: "Monkey",
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFfc6012),
                  ),
                  children: [
                    TextSpan(
                      text: "   Sign Up",
                      style: const TextStyle(
                        color: Color(0xFF4a4b4d),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          NavigatorClass.navigatorPushRoute(
                            context,
                            const SignUpScreen(),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
