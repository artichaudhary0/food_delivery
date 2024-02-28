import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/confirm_password_screen.dart';

import '../common/extensions.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                "We have sent an OTP to your Mobile",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF000000),
                  fontSize: 25,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '''Please check your mobile number 071*****12 continue to reset your password''',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 56,
                  width: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Text(
                    "*",
                    style: TextStyle(
                      height: 1.8,
                      fontSize: 37,
                      color: Color(0xFFB6B7B7),
                    ),
                  ),
                ),
                Container(
                  height: 56,
                  width: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Text(
                    "*",
                    style: TextStyle(
                      height: 1.8,
                      fontSize: 37,
                      color: Color(0xFFB6B7B7),
                    ),
                  ),
                ),
                Container(
                  height: 56,
                  width: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Text(
                    "*",
                    style: TextStyle(
                      height: 1.8,
                      fontSize: 37,
                      color: Color(0xFFB6B7B7),
                    ),
                  ),
                ),
                Container(
                  height: 56,
                  width: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Text(
                    "*",
                    style: TextStyle(
                      height: 1.8,
                      fontSize: 37,
                      color: Color(0xFFB6B7B7),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            GestureDetector(
              onTap: () {
                NavigatorClass.navigatorPushRoute(
                  context,
                  const ConfirmPasswordScreen(),
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
                  "Next",
                  style: TextStyle(
                    fontFamily: "Metropolis",
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            RichText(
              text: const TextSpan(
                text: "Didn't Receive?",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Monkey",
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFfc6012),
                ),
                children: [
                  TextSpan(
                    text: "  Click Here",
                    style: TextStyle(
                      color: Color(0xFF4a4b4d),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
