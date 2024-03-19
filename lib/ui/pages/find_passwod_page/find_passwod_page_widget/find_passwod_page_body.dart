import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/color.dart';
import '../../../../core/move.dart';

class FindPasswordPageBody extends StatefulWidget {
  const FindPasswordPageBody({super.key});

  @override
  State<FindPasswordPageBody> createState() => _FindPasswordPageBodyState();
}

class _FindPasswordPageBodyState extends State<FindPasswordPageBody> {
  bool focusEmail = false;
  bool focusEmailCheck = false;

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
                        // 이메일
                        Focus(
                          onFocusChange: (value) {
                            setState(() {
                              focusEmail = value;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: focusEmail ? kMainColor : k9DColor),
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
                                            "이메일",
                                            style: TextStyle(
                                              fontWeight: focusEmail
                                                  ? FontWeight.bold
                                                  : FontWeight.normal,
                                              color: focusEmail
                                                  ? kMainColor
                                                  : k9DColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                              inputFormatters: [
                                                LengthLimitingTextInputFormatter(
                                                    29),
                                              ],
                                              decoration: InputDecoration(
                                                  border: InputBorder.none),
                                              style: TextStyle(
                                                  color: focusEmail
                                                      ? kMainColor
                                                      : k9DColor,
                                                  decorationThickness: 0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                      child: Text(
                                        "인증하기",
                                        style: TextStyle(
                                            color: focusEmail
                                                ? kMainColor
                                                : k9DColor,
                                            fontWeight: focusEmail
                                                ? FontWeight.bold
                                                : FontWeight.normal),
                                      ),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        //인증번호
                        Focus(
                          onFocusChange: (value) {
                            setState(() {
                              focusEmailCheck = value;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color:
                                      focusEmailCheck ? kMainColor : k9DColor),
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
                                            "인증번호",
                                            style: TextStyle(
                                              fontWeight: focusEmailCheck
                                                  ? FontWeight.bold
                                                  : FontWeight.normal,
                                              color: focusEmailCheck
                                                  ? kMainColor
                                                  : k9DColor,
                                            ),
                                          ),
                                          Expanded(
                                            child: TextFormField(
                                              inputFormatters: [
                                                LengthLimitingTextInputFormatter(
                                                    29),
                                              ],
                                              decoration: InputDecoration(
                                                  border: InputBorder.none),
                                              style: TextStyle(
                                                  color: focusEmailCheck
                                                      ? kMainColor
                                                      : k9DColor,
                                                  decorationThickness: 0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                      child: Text(
                                        "확인",
                                        style: TextStyle(
                                            color: focusEmailCheck
                                                ? kMainColor
                                                : k9DColor,
                                            fontWeight: focusEmailCheck
                                                ? FontWeight.bold
                                                : FontWeight.normal),
                                      ),
                                      onPressed: () {}),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
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
              child: Text("다음"),
              onPressed: () {
                Navigator.pushNamed(context, Move.findPasswordChangePage);
              },
            ),
          ),
        ],
      ),
    );
  }
}
