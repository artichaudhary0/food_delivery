import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/extensions.dart';
import 'package:food_delivery_app/views/on_boardiing_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      NavigatorClass.navigatorPushRoute(
          context,  OnBoardingScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/background_icons.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              width: 130.11,
              height: 130.1,
              "assets/images/monkey_face.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 30.0,
            ),
            RichText(
              text: const TextSpan(
                text: "Meal",
                style: TextStyle(
                  fontSize: 40,
                  letterSpacing: 2,
                  fontFamily: "Monkey",
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFfc6012),
                ),
                children: [
                  TextSpan(
                    text: " Monkey",
                    style: TextStyle(
                      color: Color(0xFF4a4b4d),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "FOOD DELIVERY",
              style: TextStyle(
                  fontFamily: "Monkey",
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade500,
                  letterSpacing: 2.5),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
