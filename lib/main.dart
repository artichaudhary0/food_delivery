import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/go_routing.dart';
import 'package:food_delivery_app/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: GoRouting.customRouting,
      home: const SplashScreen(),
    );
  }
}
