import 'package:flutter/material.dart';
import 'package:studycafe/ui/pages/detail_page/detail_page_widgets/detail_page_body.dart';
import 'package:studycafe/ui/pages/detail_page/detail_page_widgets/detail_page_bottom_button.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailPageBody(),
      bottomNavigationBar: DetailPageBottomButton(),
    );
  }
}
