import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:studycafe/core/move.dart';
import 'package:studycafe/core/theme.dart';
import 'package:studycafe/ui/pages/join_page/join_page.dart';
import 'package:studycafe/ui/pages/login_page/login_page.dart';
import 'package:studycafe/ui/pages/splash_page/splash_page.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(ProviderScope(child: const StudyCafe()));
}

class StudyCafe extends StatelessWidget {
  const StudyCafe({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        navigatorKey: navigatorKey,
        routes: getRouters(),
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
        theme: theme(),
      ),
    );
  }
}
