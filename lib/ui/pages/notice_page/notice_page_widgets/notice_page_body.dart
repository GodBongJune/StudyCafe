import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/size.dart';

class NoticePageBody extends StatelessWidget {
  const NoticePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Container(
                child: ExpansionTile(
                  collapsedBackgroundColor: Colors.transparent,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "[공지] 공지사항 제목 안내",
                            style: TextStyle(
                              color: kMainColor,
                              fontSize: fontMedium,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "2023-10-30",
                            style: TextStyle(
                              color: k9DColor,
                              fontSize: fontRegular,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                  children: [
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 32, 16, 5),
                            child: Text(
                              "안녕하세요. 엠바스 마켓입니다."
                              "본 개인정보처리방침의 목차는 아래와 같습니다"
                              "관계법령이 요구하는 개인정보처리방침의 필수 사항과 mBaaS.Market 자체적으로 이용자 개인정보 보호에 있어 중요하게 판단하는 내용을 포함하였습니다."
                              "제1장 총칙"
                              "제1조(목적)"
                              "이 앱 창작자 이용약관(이하 “본 약관”)은 주식회사 엠바스(이하 “엠바스”)가 제공하는 클라우드 기반 앱 개발 플랫폼 솔루션 “mBaaS.Market” 및 부가서비스(이하 “본 서비스”)의 이용과 관련하여, 엠바스와 본 서비스를 이용하고자 하는 사업자(이하 “앱 창작자”) 간의 계약 관계에서 발생하는 권리와 의무, 그 밖에 필요한 기본적인 사항을 규정함을 목적으로 합니다."
                              "제2조(정의)"
                              "본 약관에서 사용하는 용어의 정의는 아래와 같습니다.",
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
            ),
          ),
        ],
      ),
    );
  }
}
