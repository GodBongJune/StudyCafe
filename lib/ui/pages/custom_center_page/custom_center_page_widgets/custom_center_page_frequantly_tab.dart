import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/size.dart';

class FrequantlyTab extends StatefulWidget {
  const FrequantlyTab({super.key});

  @override
  State<FrequantlyTab> createState() => _FrequantlyTabState();
}

class _FrequantlyTabState extends State<FrequantlyTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
        Container(
          child: ExpansionTile(
            collapsedBackgroundColor: Colors.transparent,
            title: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: kMainColor),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "자주 묻는 질문 예시입니다?1",
                  style: TextStyle(color: kMainColor, fontSize: fontRegular),
                ),
              ),
            ),
            children: [
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "안녕하세요 회원님!\n"
                        "현재 확인되는 결제 내역은 2023년 11월 20일에 결제하신 내역은 1건이 검색되었습니다.\n답변이 도움이 되셨길 바랍니다.\n감사합니다.3",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: ExpansionTile(
            collapsedBackgroundColor: Colors.transparent,
            title: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kMainColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("자주 묻는 질문 예시입니다?2",
                      style:
                          TextStyle(color: kMainColor, fontSize: fontRegular)),
                )),
            children: [
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "안녕하세요 회원님!\n"
                        "현재 확인되는 결제 내역은 2023년 11월 20일에 결제하신 내역은 1건이 검색되었습니다.\n답변이 도움이 되셨길 바랍니다.\n감사합니다2.",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: ExpansionTile(
            collapsedBackgroundColor: Colors.transparent,
            title: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kMainColor),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("자주 묻는 질문 예시입니다?3",
                      style:
                          TextStyle(color: kMainColor, fontSize: fontRegular)),
                )),
            children: [
              Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "안녕하세요 회원님!\n"
                        "현재 확인되는 결제 내역은 2023년 11월 20일에 결제하신 내역은 1건이 검색되었습니다.\n답변이 도움이 되셨길 바랍니다.\n감사합니다.1",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
