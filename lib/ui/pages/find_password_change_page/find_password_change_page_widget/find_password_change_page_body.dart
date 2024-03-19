import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../login_page/login_page.dart';

class FindPasswordChagePageBody extends StatefulWidget {
  const FindPasswordChagePageBody({super.key});

  @override
  State<FindPasswordChagePageBody> createState() =>
      _FindPasswordChagePageBodyState();
}

class _FindPasswordChagePageBodyState extends State<FindPasswordChagePageBody> {
  bool focusPassword = false;
  bool focusPasswordCheck = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        //비밀번호
                        Focus(
                          onFocusChange: (value) {
                            setState(() {
                              focusPassword = value;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: focusPassword ? kMainColor : k9DColor),
                            ),
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 0, 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "비밀번호",
                                            style: TextStyle(
                                              fontWeight: focusPassword
                                                  ? FontWeight.bold
                                                  : FontWeight.normal,
                                              color: focusPassword
                                                  ? kMainColor
                                                  : k9DColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    "대문자,소문자,숫자,특수문자를 포함한 8글자 이상",
                                                hintStyle: TextStyle(
                                                    fontSize: 13,
                                                    color: focusPassword
                                                        ? kMainColor
                                                        : k9DColor),
                                              ),
                                              style: TextStyle(
                                                  color: focusPassword
                                                      ? kMainColor
                                                      : k9DColor,
                                                  decorationThickness: 0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        //비밀번호 확인
                        Focus(
                          onFocusChange: (value) {
                            setState(() {
                              focusPasswordCheck = value;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: focusPasswordCheck
                                      ? kMainColor
                                      : k9DColor),
                            ),
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 0, 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "비밀번호",
                                            style: TextStyle(
                                              fontWeight: focusPasswordCheck
                                                  ? FontWeight.bold
                                                  : FontWeight.normal,
                                              color: focusPasswordCheck
                                                  ? kMainColor
                                                  : k9DColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                              obscureText: true,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    "대문자,소문자,숫자,특수문자를 포함한 8글자 이상",
                                                hintStyle: TextStyle(
                                                    fontSize: 13,
                                                    color: focusPasswordCheck
                                                        ? kMainColor
                                                        : k9DColor),
                                              ),
                                              style: TextStyle(
                                                  color: focusPasswordCheck
                                                      ? kMainColor
                                                      : k9DColor,
                                                  decorationThickness: 0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.075,
            decoration: BoxDecoration(
              color: kMainColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextButton(
              child: Text("비밀번호 재설정"),
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
    );
  }
}
