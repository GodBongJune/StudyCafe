import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studycafe/ui/pages/search_page/search_page_widgets/search_page_body.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
      ),
      body: SearchPageBody(),
    );
  }
}
