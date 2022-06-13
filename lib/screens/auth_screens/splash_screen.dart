import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/app_constants.dart';
import 'login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: AppConstants.primaryColor,
        duration: 1500,
        splash: AppConstants.logoWhite,
        nextScreen: Login());
  }
}
