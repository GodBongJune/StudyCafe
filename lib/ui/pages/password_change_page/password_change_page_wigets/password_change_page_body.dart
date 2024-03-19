import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:studycafe/ui/pages/password_change_page/password_change_page_wigets/password_change_page_pw_and_check.dart';

import '../../../../core/color.dart';
import '../../../../core/size.dart';

class PasswordChangePageBody extends StatelessWidget {
  const PasswordChangePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          PasswordChangePagePWCheck(),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Center(
                      child: Text(
                        "비밀번호 변경이 완료되었습니다.",
                        style: TextStyle(
                            fontSize: fontRegular,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  backgroundColor: kMainColor,
                  duration: Duration(seconds: 1),
                  margin: EdgeInsets.only(bottom: 20.0, left: 16, right: 16),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: kMainColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "비밀번호 변경",
                  style: TextStyle(
                    fontSize: fontMedium,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: kMainColor),
              ),
              child: Center(
                child: Text(
                  "취소",
                  style: TextStyle(
                    fontSize: fontMedium,
                    fontWeight: FontWeight.bold,
                    color: kMainColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
