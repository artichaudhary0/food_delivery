import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorClass {
  static navigatorPushRoute(BuildContext context, Widget whereTo) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => whereTo,
      ),
    );
  }
}
