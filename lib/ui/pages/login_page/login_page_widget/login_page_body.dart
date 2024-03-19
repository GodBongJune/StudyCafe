import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/color.dart';
import '../../../../core/move.dart';
import '../../../../core/size.dart';
import 'login_page_form_field.dart';
import 'login_page_sns_button.dart';

class LoginPageBody extends StatefulWidget {
  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  // final LoginPageFormField loginPageFormField = LoginPageFormField();
  final TextEditingController appMemberEmail = TextEditingController();
  final TextEditingController appMemberPassword = TextEditingController();

  bool idSave = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(height: 30),
            LoginPageFormField(
                appMemberEmail: appMemberEmail,
                appMemberPassword: appMemberPassword),
            SizedBox(height: 8),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: idSave,
                    checkColor: kMainColor,
                    activeColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    side: BorderSide(
                      color: k9DColor,
                      width: 1,
                    ),
                    onChanged: (value) async {
                      setState(() {
                        idSave = value!;
                      });
                    },
                  ),
                  Text("아이디 저장", style: TextStyle(fontSize: fontRegular)),
                ],
              ),
            ),
            SizedBox(height: 24),
            Consumer(
              builder: (context, ref, child) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Consumer(
                    builder: (context, ref, child) {
                      return Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.075,
                        decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextButton(
                          child: Text(
                            "로그인하기",
                            style: TextStyle(
                              fontSize: fontRegular,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                Move.mainPage, (route) => false);
                            // LoginReqDTO loginReqDTO = LoginReqDTO(
                            //   appMemberEmail: appMemberEmail.text,
                            //   appMemberPassword: appMemberPassword.text,
                            //   appCode: "kr.mbaas.app.testapp1",
                            //   snsType: "string",
                            // );
                            // ref
                            //     .read(sessionProvider)
                            //     .login(loginReqDTO, context);
                          },
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 40),
            Text("간편 로그인", style: TextStyle(fontSize: fontRegular)),
            SizedBox(height: 16),
            LoginPageSNSButton(),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width * 5,
                    MediaQuery.of(context).size.height * 0.075,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  side: BorderSide(color: kMainColor),
                ),
                child: Text("계정이 없으신가요? 회원가입하기",
                    style: TextStyle(color: kMainColor, fontSize: fontRegular)),
                onPressed: () {
                  Navigator.pushNamed(context, Move.joinPage);
                },
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    "이메일 찾기",
                    style: TextStyle(color: kMainColor, fontSize: fontRegular),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Move.findEmailPage);
                  },
                ),
                SizedBox(width: 30),
                TextButton(
                  child: Text(
                    "비밀번호 찾기",
                    style: TextStyle(color: kMainColor, fontSize: fontRegular),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Move.findPasswordPage);
                  },
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
