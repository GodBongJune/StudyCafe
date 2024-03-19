import 'package:flutter/material.dart';
import 'package:studycafe/ui/pages/password_change_page/password_change_page_wigets/password_change_page_body.dart';

class PasswordChangePage extends StatelessWidget {
  const PasswordChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("내정보"),
      ),
      body: PasswordChangePageBody(),
    );
  }
}
