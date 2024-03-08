import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/home_screen/home_screen.dart';
import 'package:food_delivery_app/views/login_screen/login_screen.dart';
import 'package:food_delivery_app/views/menu_screen/menu_screen.dart';
import 'package:food_delivery_app/views/on_boarding_screen/on_boarding_screen.dart';
import 'package:food_delivery_app/views/on_boarding_screen/on_boarding_screen_second.dart';
import 'package:food_delivery_app/views/password_screen/confirm_password_screen.dart';
import 'package:food_delivery_app/views/password_screen/otp_screen.dart';
import 'package:food_delivery_app/views/password_screen/reset_password.dart';
import 'package:food_delivery_app/views/signup_screen/sign_up_screen.dart';
import 'package:food_delivery_app/views/splash_screen/splash_screen.dart';

class GoRouting {
  static Route<dynamic> customRouting(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case "/onBoardingScreen":
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case "/loginScreen":
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case "/signUpScreen":
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case "/resetPasswordScreen":
        return MaterialPageRoute(
          builder: (context) => const ResetPasswordScreen(),
        );
      case "/onBoardSecondScreen":
        return MaterialPageRoute(
          builder: (context) => const OnBoardSecondScreen(),
        );
      case "/otpScreen":
        return MaterialPageRoute(
          builder: (context) => const OtpScreen(),
        );
      case "/confirmPasswordScreen":
        return MaterialPageRoute(
          builder: (context) => const ConfirmPasswordScreen(),
        );
      case "/homeScreen":
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case "/menuScreen":
        return MaterialPageRoute(
          builder: (context) => const MenuScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const OnBoardSecondScreen(),
        );
    }
  }
}
