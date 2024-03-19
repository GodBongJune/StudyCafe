import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class LoginPageSNSButton extends StatefulWidget {
  LoginPageSNSButton({super.key});

  @override
  State<LoginPageSNSButton> createState() => _LoginPageSNSButtonState();
}

class _LoginPageSNSButtonState extends State<LoginPageSNSButton> {
  // LoginPlatform _loginPlatform = LoginPlatform.none;
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // google_user.User? _googleUser;
  // kakao_user.User? _kakaoUser;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _auth.authStateChanges().listen((event) {
  //     setState(() {
  //       _googleUser = event;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Image.asset("assets/sns/google.png"),
                onTap: () {
                  // loginGoogle(ref);
                },
              ),
              InkWell(
                child: Image.asset("assets/sns/naver.png"),
                onTap: () {
                  // loginNaver();
                },
              ),
              InkWell(
                child: Image.asset("assets/sns/kakao.png"),
                onTap: () {
                  // loginKakao();
                },
              ),
              InkWell(
                child: Image.asset("assets/sns/apple.png"),
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
  }

  // void loginGoogle(WidgetRef ref) async {
  //   GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
  //   await _auth.signInWithProvider(_googleAuthProvider);
  //   SearchDTO searchDTO = SearchDTO(
  //     appCode: "kr.mbaas.app.testapp1",
  //     appMemberEmail: "${_googleUser!.email}",
  //     emailAuthType: "JOIN",
  //   );
  //   ref.read(sessionProvider).search(searchDTO, context);
  // }
  //
  // void loginNaver() async {
  //   final NaverLoginResult result = await FlutterNaverLogin.logIn();
  //   Logger().d(result);
  // }
  //
  // void loginKakao() async {
  //   OAuthToken token = await UserApi.instance.loginWithKakaoAccount();
  //   Logger().d(token);
  //
  //   final kakaoUser = await UserApi.instance.me();
  //   Logger().d(kakaoUser);
  //
  //   // setState(() {
  //   //   _loginPlatform = LoginPlatform.kakao;
  //   //   _kakaoUser = kakaoUser;
  //   // });
  // }
  //
  // void logout() async {
  //   switch (_loginPlatform) {
  //     case LoginPlatform.google:
  //       break;
  //     case LoginPlatform.naver:
  //       break;
  //     case LoginPlatform.kakao:
  //       break;
  //     case LoginPlatform.apple:
  //       break;
  //     case LoginPlatform.none:
  //       break;
  //   }
  // }
}
