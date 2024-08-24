import 'package:flutter/material.dart';
import '../screen/alert.dart';
import '../screen/welcome/welcome.dart';

class AppRoutes {
  static String welcome = '/welcome';
  static String alert = '/alert';
  static Map<String, WidgetBuilder> routes = {
    welcome: (context) => const Welcome(),
    alert: (context) => const Alert(),
  };
}
