import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery_app/views/on_boarding_screen/on_boarding_screen.dart';

import '../../common/extensions.dart';
import '../on_boarding_screen/on_boarding_screen_second.dart';

class ConfirmPasswordScreen extends StatelessWidget {
  const ConfirmPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 82.0),
              child: Text(
                "New Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Metropolis",
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF000000),
                  fontSize: 30,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '''Please enter your email to receive a link to  create a new password via email''',
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(
                  fontFamily: "Metropolis",
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF7C7D7E),
                  fontSize: 14,
                ),
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
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      hintText: "New Password",
                      hintStyle: const TextStyle(color: Color(0xFFB6B7B7)),
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(34),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      fillColor: const Color(0xFFF2F2F2),
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 28,),
                  TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(34),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      hintText: "Confirm Password",
                      hintStyle: const TextStyle(color: Color(0xFFB6B7B7)),
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                NavigatorClass.navigatorPushRoute(context,const OnBoardSecondScreen(),);
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
                  "Next",
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
          ],
        ),
      ),
    );
  }
}
