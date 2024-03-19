import 'package:flutter/material.dart';
import 'package:studycafe/ui/pages/notice_page/notice_page_widgets/notice_page_body.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key});

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
        title: Text("공지사항"),
      ),
      body: NoticePageBody(),
    );
  }
}
