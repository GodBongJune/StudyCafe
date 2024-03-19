import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/size.dart';

class QuestionTab extends StatefulWidget {
  const QuestionTab({super.key});

  @override
  State<QuestionTab> createState() => _QuestionTabState();
}

class _QuestionTabState extends State<QuestionTab> {
  String selectedQuestion = "유형을 선택해주세요";

  @override
  Widget build(BuildContext context) {
    List<String> questionList = ["유형을 선택해주세요", "환불", "택배", "기타"];

    return ListView(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //유형
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "유형",
                            style: TextStyle(
                              color: kMainColor,
                              fontSize: fontRegular,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: kEEEEColor,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DropdownButton<String>(
                              underline: SizedBox.shrink(),
                              value: selectedQuestion,
                              style: TextStyle(color: kMainColor),
                              items: questionList.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                        color: value == "유형을 선택해주세요"
                                            ? kC8Color
                                            : kMainColor,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedQuestion = newValue!;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                //제목
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "제목",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: kEEEEColor),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Center(
                            child: TextFormField(
                              style: TextStyle(decorationThickness: 0),
                              decoration: InputDecoration(
                                hintText: "제목을 입력하세요",
                                hintStyle: TextStyle(
                                  color: k9DColor,
                                  fontSize: fontRegular,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                //내용
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "내용",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: fontRegular,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: kEEEEColor),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextFormField(
                            maxLines: null,
                            style: TextStyle(decorationThickness: 0),
                            decoration: InputDecoration(
                              hintText: "궁금하신 사항을 입력해 주시면 빠르게 답변해 드리겠습니다.",
                              hintStyle: TextStyle(
                                color: k9DColor,
                                fontSize: fontRegular,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: kMainColor,
                  ),
                  height: MediaQuery.of(context).size.height * 0.075,
                  width: double.infinity,
                  child: TextButton(
                    child: Text(
                      "문의하기",
                      style: TextStyle(
                        fontSize: fontMedium,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
