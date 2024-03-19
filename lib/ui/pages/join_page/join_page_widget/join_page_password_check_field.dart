import 'package:flutter/material.dart';

import '../../../../core/color.dart';

class JoinPagePasswordCheckField extends StatelessWidget {
  final TextEditingController joinPasswordCheck;

  JoinPagePasswordCheckField({super.key, required this.joinPasswordCheck});

  bool focusPasswordCheck = false;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          children: [
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
          ],
        );
      },
    );
  }
}
