import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studycafe/ui/pages/login_page/login_page.dart';

import '../main_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedSplashScreen(
        splash: SvgPicture.asset("assets/images/logo/logo.svg"),
        nextScreen: LoginPage(),
        duration: 2000,
      ),
    );
  }
}
