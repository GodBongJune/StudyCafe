import 'package:flutter/material.dart';
import 'package:studycafe/ui/pages/use_list_page/use_list_page_widgets/use_list_page_body.dart';

class UseListPage extends StatelessWidget {
  const UseListPage({super.key});

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
        title: Text("이용내역"),
      ),
      body: UseListPageBody(),
    );
  }
}
