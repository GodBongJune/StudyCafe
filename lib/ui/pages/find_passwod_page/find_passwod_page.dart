import 'package:flutter/material.dart';

import '../../../core/size.dart';
import 'find_passwod_page_widget/find_passwod_page_body.dart';

class FindPasswordPage extends StatelessWidget {
  const FindPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "비밀번호 찾기",
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
      body: FindPasswordPageBody(),
    );
  }
}
