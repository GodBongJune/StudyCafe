import 'package:flutter/material.dart';
import 'package:studycafe/core/color.dart';
import 'package:studycafe/ui/pages/my_info_page/my_info_page_widgets/my_info_page_body.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({super.key});

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
      body: MyInfoPageBody(),
    );
  }
}
