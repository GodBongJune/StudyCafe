import 'package:flutter/material.dart';

import '../../../core/size.dart';
import 'find_email_success_page_widget/find_email_success_page_body.dart';

class FindEmailSuccessPage extends StatelessWidget {
  const FindEmailSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "이메일 찾기",
          style: TextStyle(
            color: Colors.black,
            fontSize: fontMedium,
            fontWeight: FontWeight.normal,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: FindEmailSuccessPageBody(),
    );
  }
}
