import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:studycafe/core/color.dart';
import '../../../../core/size.dart';
import 'join_page_email_and_auth_field.dart';
import 'join_page_name_field.dart';
import 'join_page_password_and_check_field.dart';
import 'join_page_phone_field.dart';

class JoinPageFormField extends StatelessWidget {
  JoinPageFormField({super.key});

  final _formKey = GlobalKey<FormState>();
  final joinName = TextEditingController();
  final joinEmail = TextEditingController();
  final joinEmailCheck = TextEditingController();
  final joinPassword = TextEditingController();
  final joinPasswordCheck = TextEditingController();
  final joinPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // SearchDTO searchDTO =
    //     ModalRoute.of(context)!.settings.arguments as SearchDTO;

    return Container(
      child: Expanded(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          //이름
                          JoinPageNameField(joinName: joinName),
                          //이메일&인증번호
                          JoinPageEmailAndAuthField(
                            joinEmail: joinEmail,
                            joinEmailCheck: joinEmailCheck,
                            // appMemberEmail: searchDTO.appMemberEmail,
                          ),
                          //비밀번호&확인
                          JoinPagePasswordAndCheckField(
                              joinPassword: joinPassword,
                              joinPasswordCheck: joinPasswordCheck),
                          //휴대전화
                          JoinPagePhoneField(joinPhone: joinPhone),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.075,
                    decoration: BoxDecoration(
                      color: kMainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                        child:
                            Text("다음", style: TextStyle(fontSize: fontRegular)),
                        onPressed: () {
                          Logger().d("여기 버튼누름${joinEmail.text}");
                          if (joinName.text == null ||
                              joinName.text.isEmpty ||
                              joinEmail.text == null ||
                              joinEmail.text.isEmpty ||
                              joinPassword.text == null ||
                              joinPassword.text.isEmpty ||
                              joinPasswordCheck.text == null ||
                              joinPasswordCheck.text.isEmpty ||
                              joinPhone.text == null ||
                              joinPhone.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  child: Center(
                                    child: Text("공백을 다 채워주세요",
                                        style:
                                            TextStyle(fontSize: fontRegular)),
                                  ),
                                ),
                                duration: Duration(seconds: 1),
                                margin: EdgeInsets.only(
                                    bottom: MediaQuery.of(context).size.height *
                                        0.1,
                                    left: 16,
                                    right: 16),
                                behavior: SnackBarBehavior.floating,
                              ),
                            );
                            return;
                          }
                          FocusScope.of(context).unfocus();
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              bool agreeCheckAll = false;
                              bool agreeCheck1 = false;
                              bool agreeCheck2 = false;
                              bool agreeCheck3 = false;
                              return Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.38,
                                child: StatefulBuilder(
                                  builder: (context, setState) {
                                    return Container(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        children: <Widget>[
                                          Column(
                                            children: [
                                              //전체 동의
                                              Row(
                                                children: [
                                                  IconButton(
                                                    icon: Icon(
                                                        Icons.check_circle),
                                                    color: agreeCheckAll
                                                        ? Colors.green
                                                        : k9DColor,
                                                    onPressed: () {
                                                      setState(() {
                                                        agreeCheckAll =
                                                            !agreeCheckAll;
                                                        if (agreeCheckAll) {
                                                          agreeCheck1 = true;
                                                          agreeCheck2 = true;
                                                          agreeCheck3 = true;
                                                        } else {
                                                          agreeCheck1 = false;
                                                          agreeCheck2 = false;
                                                          agreeCheck3 = false;
                                                        }
                                                      });
                                                    },
                                                  ),
                                                  Text(
                                                    "전체 이용약관 동의",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              //동의 1
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(Icons.check),
                                                        color: agreeCheck1
                                                            ? Colors.green
                                                            : k9DColor,
                                                        onPressed: () {
                                                          setState(() {
                                                            agreeCheck1 =
                                                                !agreeCheck1;
                                                          });
                                                        },
                                                      ),
                                                      Text(
                                                        "[필수] 서비스 이용약관 동의",
                                                        style: TextStyle(
                                                            color: kMainColor),
                                                      ),
                                                    ],
                                                  ),
                                                  TextButton(
                                                      child: Text(
                                                        "보기",
                                                        style: TextStyle(
                                                            color: k9DColor),
                                                      ),
                                                      onPressed: () {})
                                                ],
                                              ),
                                              //동의 2
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(Icons.check),
                                                        color: agreeCheck2
                                                            ? Colors.green
                                                            : k9DColor,
                                                        onPressed: () {
                                                          setState(() {
                                                            agreeCheck2 =
                                                                !agreeCheck2;
                                                          });
                                                        },
                                                      ),
                                                      Text(
                                                        "[필수] 서비스 이용약관 동의",
                                                        style: TextStyle(
                                                            color: kMainColor),
                                                      ),
                                                    ],
                                                  ),
                                                  TextButton(
                                                      child: Text(
                                                        "보기",
                                                        style: TextStyle(
                                                            color: k9DColor),
                                                      ),
                                                      onPressed: () {})
                                                ],
                                              ),
                                              //동의 3
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(Icons.check),
                                                        color: agreeCheck3
                                                            ? Colors.green
                                                            : k9DColor,
                                                        onPressed: () {
                                                          setState(() {
                                                            agreeCheck3 =
                                                                !agreeCheck3;
                                                          });
                                                        },
                                                      ),
                                                      Text(
                                                        "[선택] 마케팅 정보 수신 동의",
                                                        style: TextStyle(
                                                            color: kMainColor),
                                                      ),
                                                    ],
                                                  ),
                                                  TextButton(
                                                      child: Text(
                                                        "보기",
                                                        style: TextStyle(
                                                            color: k9DColor),
                                                      ),
                                                      onPressed: () {})
                                                ],
                                              )
                                            ],
                                          ),
                                          Spacer(),
                                          Consumer(
                                            builder: (context, ref, child) {
                                              return Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.075,
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    backgroundColor: kMainColor,
                                                  ),
                                                  child: Text("회원가입하기",
                                                      style: TextStyle(
                                                          fontSize:
                                                              fontRegular)),
                                                  onPressed: () {
                                                    // if (agreeCheck1 &&
                                                    //     agreeCheck2 == true) {
                                                    //   JoinReqDTO joinReqDTO =
                                                    //       JoinReqDTO(
                                                    //     appMemberName:
                                                    //         joinName.text,
                                                    //     appMemberEmail:
                                                    //         joinEmail.text,
                                                    //     appMemberPassword:
                                                    //         joinPassword.text,
                                                    //     appMemberPhone:
                                                    //         joinPhone.text,
                                                    //     appCode:
                                                    //         "kr.mbaas.app.testapp1",
                                                    //     appMemberPrivateAgree:
                                                    //         "Y",
                                                    //   );
                                                    //
                                                    //   ref
                                                    //       .read(sessionProvider)
                                                    //       .join(joinReqDTO,
                                                    //           context);
                                                    // }
                                                  },
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
