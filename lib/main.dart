import 'package:flutter/material.dart';
import 'package:studycafe/core/theme.dart';
import 'package:studycafe/ui/pages/main_page.dart';
import 'package:studycafe/ui/pages/splash_page/splash_page.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const StudyCafe());
}

class StudyCafe extends StatelessWidget {
  const StudyCafe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: theme(),
    );
  }
}
