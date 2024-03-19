import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/move.dart';
import '../../../../core/size.dart';

class JoinPageSuccess extends StatelessWidget {
  const JoinPageSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(),
            Text(
              "회원가입 완료!",
              style: TextStyle(
                color: kMainColor,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "엠바스 회원이 된 것을 환영해요.",
              style: TextStyle(
                color: kMainColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Spacer(),
            TextButton(
              style: TextButton.styleFrom(
                fixedSize:
                    Size.fromHeight(MediaQuery.of(context).size.height * 0.075),
                backgroundColor: kMainColor,
              ),
              child: Text("메인화면으로", style: TextStyle(fontSize: fontRegular)),
              onPressed: () {
                Navigator.popAndPushNamed(context, Move.loginPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
