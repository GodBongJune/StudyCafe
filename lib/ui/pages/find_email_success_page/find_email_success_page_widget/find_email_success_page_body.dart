import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/move.dart';
import '../../../../core/size.dart';
import '../../login_page/login_page.dart';

class FindEmailSuccessPageBody extends StatelessWidget {
  const FindEmailSuccessPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Spacer(),
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    Icon(
                      CupertinoIcons.checkmark,
                      size: 30,
                      color: kMainColor,
                    ),
                    SizedBox(height: 25),
                    Text(
                      "입력해주신 고객님의 정보와\n일치하는 이메일 입니다.",
                      style: TextStyle(
                        color: k76Color,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      "aaa@aaa.com",
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: fontMedium,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.075,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: kMainColor,
                    )),
                child: TextButton(
                  child: Text(
                    "비밀번호 재설정",
                    style: TextStyle(
                      color: kMainColor,
                      fontSize: fontMedium,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.popAndPushNamed(context, Move.findPasswordPage);
                  },
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.075,
                decoration: BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  child: Text("로그인"),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                        (route) => false);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
