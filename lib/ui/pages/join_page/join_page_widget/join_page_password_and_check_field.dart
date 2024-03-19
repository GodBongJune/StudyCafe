import 'package:flutter/material.dart';

import '../../../../core/color.dart';

class JoinPagePasswordAndCheckField extends StatelessWidget {
  final TextEditingController joinPassword;
  final TextEditingController joinPasswordCheck;

  JoinPagePasswordAndCheckField(
      {super.key, required this.joinPassword, required this.joinPasswordCheck});

  bool focusPassword = false;
  bool focusPasswordCheck = false;

  //비밀번호 일치 확인
  bool passwordMatching() {
    return joinPassword.text == joinPasswordCheck.text;
  }

  // 비밀번호 유효성 검사
  String? validatePassword(String? value) {
    if (value == null || value.length < 8 || value.length > 20) {
      return "비밀번호는 8~20자여야 합니다.";
    }
    bool hasUppercase = value.contains(new RegExp(r'[A-Z]'));
    bool hasLowercase = value.contains(new RegExp(r'[a-z]'));
    bool hasDigits = value.contains(new RegExp(r'[0-9]'));
    bool hasSpecialCharacters =
        value.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    if (!(hasUppercase && hasLowercase && hasDigits && hasSpecialCharacters)) {
      return "대문자, 소문자, 숫자, 특수문자를 포함하여야 합니다.";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          child: Column(
            children: [
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
                            padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "비밀번호",
                                  style: TextStyle(
                                    fontWeight: focusPassword
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    color:
                                        focusPassword ? kMainColor : k9DColor,
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    validator: validatePassword,
                                    controller: joinPassword,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "대문자,소문자,숫자,특수문자를 포함한 8글자 이상",
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
                        color: focusPasswordCheck ? kMainColor : k9DColor),
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
                                  "비밀번호 확인",
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
                                    validator: validatePassword,
                                    controller: joinPasswordCheck,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "대문자,소문자,숫자,특수문자를 포함한 8글자 이상",
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
                                      decorationThickness: 0,
                                    ),
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
              Visibility(
                visible: !passwordMatching(),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (!passwordMatching())
                          Text(
                            "비밀번호가 일치하지 않습니다.",
                            style: TextStyle(color: kEA4335Color),
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
