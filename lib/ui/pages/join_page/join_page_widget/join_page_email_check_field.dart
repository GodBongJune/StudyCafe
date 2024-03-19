import 'package:flutter/material.dart';

import '../../../../core/color.dart';

class JoinPageEmailCheckField extends StatelessWidget {
  final TextEditingController joinEmailCheck;

  JoinPageEmailCheckField({super.key, required this.joinEmailCheck});

  bool focusEmailCheck = false;

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
                    focusEmailCheck = value;
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: focusEmailCheck ? kMainColor : k9DColor),
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
                                    controller: joinEmailCheck,
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
                                  color:
                                      focusEmailCheck ? kMainColor : k9DColor,
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
        );
      },
    );
  }
}
