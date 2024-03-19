import 'package:flutter/material.dart';
import 'package:studycafe/ui/pages/like_list_page/like_list_page_widgets/like_list_page_body.dart';

class LikeListPage extends StatelessWidget {
  const LikeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LikeListPageBody(),
    );
  }
}
