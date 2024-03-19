import 'package:flutter/material.dart';
import 'package:studycafe/core/color.dart';

class LoginPageUserEmail extends StatelessWidget {
  final TextEditingController appMemberEmail;

  LoginPageUserEmail({required this.appMemberEmail});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.075,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: k9DColor)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: TextFormField(
            controller: appMemberEmail,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "이메일을 입력해 주세요",
              hintStyle: TextStyle(fontSize: 13, color: k9DColor),
            ),
            style: TextStyle(color: k9DColor, decorationThickness: 0),
          ),
        ),
      ),
    );
  }
}
