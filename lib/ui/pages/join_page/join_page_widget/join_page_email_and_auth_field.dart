// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/color.dart';

class JoinPageEmailAndAuthField extends StatelessWidget {
  bool lockEmailContainer = true;
  bool lockEmailCheckContainer = true;

  final TextEditingController joinEmail;
  final TextEditingController joinEmailCheck;
  final String? appMemberEmail;

  JoinPageEmailAndAuthField({
    super.key,
    required this.joinEmail,
    required this.joinEmailCheck,
    this.appMemberEmail,
  });

  bool focusEmail = false;
  bool focusEmailCheck = false;

  @override
  Widget build(BuildContext context) {
    if (appMemberEmail != null) {
      joinEmail.text = appMemberEmail!;
      lockEmailContainer = false;
      lockEmailCheckContainer = false;
    }

    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          child: Column(
            children: [
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
                    border:
                        Border.all(color: focusEmail ? kMainColor : k9DColor),
                    color: lockEmailContainer
                        ? Colors.transparent
                        : Colors.grey[300],
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "이메일",
                                  style: TextStyle(
                                    fontWeight: focusEmail
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    color: focusEmail ? kMainColor : k9DColor,
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    enabled: lockEmailContainer,
                                    controller: joinEmail,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(29),
                                    ],
                                    decoration: InputDecoration(
                                        border: InputBorder.none),
                                    style: TextStyle(
                                        color:
                                            focusEmail ? kMainColor : k9DColor,
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
                                color: focusEmail ? kMainColor : k9DColor,
                                fontWeight: focusEmail
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                          onPressed: lockEmailContainer
                              ? () async {
                                  if (joinEmail.text.isEmpty) {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) {
                                        return AlertDialog(
                                          content: Text("이메일을 입력해주세요"),
                                          actions: [
                                            TextButton(
                                              child: Text(
                                                "확인",
                                                style: TextStyle(
                                                  color: kMainColor,
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            )
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) {
                                        return AlertDialog(
                                          content: Text("인증번호 전송완료"),
                                          actions: [
                                            TextButton(
                                              child: Text(
                                                "확인",
                                                style: TextStyle(
                                                    color: kMainColor),
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    setState(() {
                                      lockEmailContainer = false;
                                    });
                                    // dio.post(
                                    //     "https://api.aiapp.link/api/app/member/auth/send",
                                    //     data: {
                                    //       "appCode": "kr.mbaas.app.testapp1",
                                    //       "appMemberEmail": "${joinEmail.text}",
                                    //       "emailAuthType": "JOIN"
                                    //     });
                                  }
                                }
                              : null,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Focus(
                onFocusChange: (value) {
                  setState(() {
                    focusEmailCheck = value;
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: focusEmailCheck ? kMainColor : k9DColor),
                    color: lockEmailCheckContainer
                        ? Colors.transparent
                        : Colors.grey[300],
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "인증번호",
                                  style: TextStyle(
                                      fontWeight: focusEmailCheck
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: focusEmailCheck
                                          ? kMainColor
                                          : k9DColor),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    enabled: lockEmailCheckContainer,
                                    controller: joinEmailCheck,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly,
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
                                color: focusEmailCheck ? kMainColor : k9DColor,
                                fontWeight: focusEmailCheck
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                          onPressed: lockEmailCheckContainer
                              ? () async {
                                  if (joinEmailCheck.text.isEmpty) {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) {
                                        return AlertDialog(
                                          content: Text("인증번호를 입력해주세요"),
                                          actions: [
                                            TextButton(
                                              child: Text(
                                                "확인",
                                                style: TextStyle(
                                                    color: kMainColor),
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) {
                                        return AlertDialog(
                                          content: Text("인증번호 확인완료"),
                                          actions: [
                                            TextButton(
                                              child: Text(
                                                "확인",
                                                style: TextStyle(
                                                    color: kMainColor),
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    setState(() {
                                      lockEmailCheckContainer = false;
                                    });
                                    // dio.put(
                                    //   "https://api.aiapp.link/api/app/member/auth/send",
                                    //   data: {
                                    //     "appMemberEmail": "${joinEmail.text}",
                                    //     "authCode": "${joinEmailCheck.text}",
                                    //     "emailAuthType": "JOIN",
                                    //     "appCode": "kr.mbaas.app.testapp1"
                                    //   },
                                    // );
                                  }
                                }
                              : null,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}
