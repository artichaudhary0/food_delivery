import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/common/extensions.dart';
import 'package:food_delivery_app/views/signup_screen/sign_up_screen.dart';
import '../../utils/custom_button.dart';
import '../login_screen/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [

              Container(
                width: size.width,
                height: size.height / 2.5,
                decoration: BoxDecoration(
                  color: const Color(0xFFfc6012),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/Background objects.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 20,
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -140,
                left: size.width / 3,
                child: Container(
                  height: size.height / 3,
                  width: size.width / 3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/monkey_face.png",
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: size.height / 8.9),
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
          SizedBox(height: size.width / 60),
          Text(
            "FOOD DELIVERY",
            style: TextStyle(
              fontFamily: "Monkey",
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade500,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(height: size.width * 0.075),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 60,
              vertical: 20,
            ),
            child: Text(
              "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Metropolis",
                height: 1.5,
                fontWeight: FontWeight.w500,
                color: Color(0xFF7C7D7E),
                fontSize: 13,
              ),
            ),
          ),
          CustomButton(
            text: "Login",
            onPressed: () {
              NavigatorClass.navigatorPushRoute(
                context,
                const LoginScreen(),
              );
            },
          ),
          GestureDetector(
            onTap: () {
              NavigatorClass.navigatorPushRoute(
                context,
                const SignUpScreen(),
              );
            },
            child: Container(
              height: 56,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 25,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // color: Color(0xFFFC6011),
                border: Border.all(color: TColor.primary),

                borderRadius: BorderRadius.circular(34),
              ),
              child: Text(
                "Create an Account",
                style: TextStyle(
                  fontFamily: "Metropolis",
                  height: 1.5,
                  fontWeight: FontWeight.w700,
                  color: TColor.primary,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Icon(CupertinoIcons.heart,weight: 700,),
        ],
      ),
    );
  }
}
