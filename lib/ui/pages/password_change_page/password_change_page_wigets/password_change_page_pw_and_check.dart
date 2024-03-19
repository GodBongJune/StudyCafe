import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/size.dart';

class PasswordChangePagePWCheck extends StatelessWidget {
  const PasswordChangePagePWCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "비밀번호",
              style: TextStyle(
                  color: kMainColor,
                  fontSize: fontRegular,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kEEEEColor)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "대문자,소문자,숫자,특수문자를 포함한 8글자 이상",
                        hintStyle:
                            TextStyle(color: k9DColor, fontSize: fontRegular),
                      ),
                      style: TextStyle(
                        color: k9DColor,
                        decorationThickness: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "비밀번호 재확인",
              style: TextStyle(
                  color: kMainColor,
                  fontSize: fontRegular,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: kEEEEColor)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "비밀번호를 일치하게 작성해주세요.",
                          hintStyle:
                              TextStyle(color: k9DColor, fontSize: fontRegular),
                        ),
                        style: TextStyle(
                          color: k9DColor,
                          decorationThickness: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ],
    );
  }
}
