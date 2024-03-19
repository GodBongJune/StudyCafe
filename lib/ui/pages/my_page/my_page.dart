import 'package:flutter/material.dart';

import 'my_page_widgets/my_page_body.dart';

class MyPage extends StatelessWidget {
  final Function(int) onNavigateToPage;

  const MyPage({super.key, required this.onNavigateToPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPageBody(
        onNavigateToPage: (index) {
          onNavigateToPage(index);
        },
      ),
    );
  }
}
