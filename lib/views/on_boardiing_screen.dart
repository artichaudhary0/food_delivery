import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/common/color_extension.dart';

import 'login_screen.dart';

class OnBoaardingScreen extends StatefulWidget {
  const OnBoaardingScreen({super.key});

  @override
  State<OnBoaardingScreen> createState() => _OnBoaardingScreenState();
}

class _OnBoaardingScreenState extends State<OnBoaardingScreen> {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: media.width,
                height: MediaQuery.of(context).size.height / 3,
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
                bottom: -120,
                left: media.width / 3,
                child: Container(
                  height: media.height / 3,
                  width: media.width / 3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/monkey_face.png",
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 100.0,
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
          SizedBox(
            height: media.width * 0.1,
          ),
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: Container(
              height: 56,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFFC6011),
                borderRadius: BorderRadius.circular(34),
              ),
              child:  Text(
                "Login",
                style: TextStyle(
                  fontFamily: "Metropolis",
                  height: 1.5,
                  fontWeight: FontWeight.w700,
                  color: TColor.textField,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Container(
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
        ],
      ),
    );
  }
}
