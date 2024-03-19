import 'package:flutter/material.dart';

import '../../../core/color.dart';
import '../../../core/size.dart';
import 'custom_center_page_widgets/custom_center_page_answer_tab.dart';
import 'custom_center_page_widgets/custom_center_page_frequantly_tab.dart';
import 'custom_center_page_widgets/custom_center_page_question_tab.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: "문의/건의"),
  Tab(text: "문의 답변"),
  Tab(text: "FAQ"),
];

class CustomCenterPage extends StatelessWidget {
  final int initialTabIndex;

  const CustomCenterPage({Key? key, this.initialTabIndex = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int initialTabIndex =
        ModalRoute.of(context)!.settings.arguments as int? ?? 0;

    return DefaultTabController(
      length: tabs.length,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "고객센터",
            style: TextStyle(
                color: kMainColor,
                fontSize: fontMedium,
                fontWeight: FontWeight.normal),
          ),
          bottom: TabBar(
            labelStyle: TextStyle(
                color: kMainColor,
                fontSize: fontRegular,
                fontWeight: FontWeight.bold),
            unselectedLabelColor: kC8Color,
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: [
            QuestionTab(),
            AnswerTab(),
            FrequantlyTab(),
          ],
        ),
      ),
    );
  }
}
