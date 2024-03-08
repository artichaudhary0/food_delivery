import 'dart:async';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common/extensions.dart';
import 'dart:math' show pi;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration:const Duration(seconds: 2),
    );
    _animation =
        Tween<double>(begin: 0, end: pi * 2).animate(_animationController);
    _animationController.forward();
    Timer(
      const Duration(seconds: 3),
      () {
        NavigatorClass.navigatorPushNameRoute(
          context,
          '/onBoardingScreen'
        );
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
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
            AnimatedBuilder(
              animation: _animation,
              builder: (BuildContext context, Widget? child) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..rotateZ(_animation.value),
                  child: Image.asset(
                    width: 130.11,
                    height: 130.1,
                    "assets/images/monkey_face.png",
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
            const SizedBox(height: 30.0),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.3, end: 1),
              duration: const Duration(seconds: 2),
              curve: Curves.bounceOut,
              builder: (BuildContext context, value, Widget? child) {
                return Opacity(
                  opacity: value,
                  child: RichText(
                    text: TextSpan(
                      text: "Meal",
                      style: TextStyle(
                        fontSize: 40 * value,
                        letterSpacing: 2,
                        fontFamily: "Monkey",
                        fontWeight: FontWeight.bold,
                        color: TColor.primary,
                      ),
                      children: const [
                        TextSpan(
                          text: " Monkey",
                          style: TextStyle(
                            color: Color(0xFF4a4b4d),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            Text(
              "FOOD DELIVERY",
              style: TextStyle(
                fontFamily: "Monkey",
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade500,
                letterSpacing: 2.5,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
