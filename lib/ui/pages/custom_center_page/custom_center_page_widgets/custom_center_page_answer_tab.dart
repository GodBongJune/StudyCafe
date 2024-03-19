import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/size.dart';

class AnswerTab extends StatelessWidget {
  const AnswerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  //문의제목1
                  Container(
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.transparent,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: kMainColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "광고상담",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: fontRegular,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Text(
                                "2023-10-30",
                                style: TextStyle(
                                  color: k9DColor,
                                  fontSize: fontRegular,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "문의 제목1",
                                style: TextStyle(
                                  color: kMainColor,
                                  fontSize: fontMedium,
                                ),
                              ),
                              SizedBox(width: 35),
                              Text(
                                "미답변",
                                style: TextStyle(
                                  color: kC8Color,
                                  fontSize: fontRegular,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                      children: [],
                    ),
                  ),
                  //문의제목2
                  Container(
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.transparent,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: kMainColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "마케팅상담",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: fontRegular,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Text(
                                "2023-10-30",
                                style: TextStyle(
                                  color: k9DColor,
                                  fontSize: fontRegular,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  "문의제목2",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: fontMedium,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(width: 35),
                              Text(
                                "답변완료",
                                style: TextStyle(
                                  color: kMainColor,
                                  fontSize: fontRegular,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                      children: [
                        Container(
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 32, 16, 5),
                                child: Text(
                                  "안녕하세요 회원님!\n"
                                  "현재 확인되는 결제 내역은 2023년 11월 20일에 결제하신 내역은 1건이 검색되었습니다.\n답변이 도움이 되셨길 바랍니다.\n감사합니다.",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: fontRegular,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, bottom: 32),
                                    child: Text(
                                      "2023-08-03",
                                      style: TextStyle(
                                        color: k9DColor,
                                        fontSize: fontRegular,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //문의제목3
                  Container(
                    child: ExpansionTile(
                      collapsedBackgroundColor: Colors.transparent,
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: kMainColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "마케팅상담",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: fontRegular,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Text(
                                "2023-10-30",
                                style: TextStyle(
                                  color: k9DColor,
                                  fontSize: fontRegular,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  "문의내용입니다.문의내용입니다.문의내용입니다.문의내용입니다.문의내용입니다.",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: fontMedium,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(width: 35),
                              Text(
                                "답변완료",
                                style: TextStyle(
                                  color: kMainColor,
                                  fontSize: fontRegular,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                      children: [
                        Container(
                          color: Colors.grey[100],
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 32, 16, 5),
                                child: Text(
                                  "안녕하세요 회원님!\n"
                                  "현재 확인되는 결제 내역은 2023년 11월 20일에 결제하신 내역은 1건이 검색되었습니다.\n답변이 도움이 되셨길 바랍니다.\n감사합니다.",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: fontRegular,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16, bottom: 32),
                                    child: Text(
                                      "2023-08-03",
                                      style: TextStyle(
                                        color: k9DColor,
                                        fontSize: fontRegular,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
