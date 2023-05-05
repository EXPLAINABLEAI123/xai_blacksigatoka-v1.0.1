import 'package:flutter/material.dart';
import 'package:xai_blacksigatoka/presentation/model/home.dart';
import 'package:xai_blacksigatoka/presentation/splash_screen/splash_screen.dart';
import 'package:xai_blacksigatoka/presentation/scr_two_screen/scr_two_screen.dart';
import 'package:xai_blacksigatoka/presentation/home_screen/home_screen.dart';
import 'package:xai_blacksigatoka/presentation/scr_one_screen/scr_one_screen.dart';
import 'package:xai_blacksigatoka/presentation/welcome_screen/welcome_screen.dart';
import 'package:xai_blacksigatoka/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String scrTwoScreen = '/scr_two_screen';

  static const String homeScreen = '/home_screen';

  static const String scrOneScreen = '/scr_one_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String home = '/home';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    scrTwoScreen: (context) => ScrTwoScreen(),
    homeScreen: (context) => HomeScreen(),
    scrOneScreen: (context) => ScrOneScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    home: (context) => Home()
  };
}
