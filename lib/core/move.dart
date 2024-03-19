import 'package:flutter/material.dart';
import 'package:studycafe/ui/pages/custom_center_page/custom_center_page.dart';
import 'package:studycafe/ui/pages/detail_page/detail_page.dart';
import 'package:studycafe/ui/pages/detail_page/detail_page_widgets/detail_page_success.dart';
import 'package:studycafe/ui/pages/join_page/join_page.dart';
import 'package:studycafe/ui/pages/like_list_page/like_list_page.dart';
import 'package:studycafe/ui/pages/login_page/login_page.dart';
import 'package:studycafe/ui/pages/my_info_page/my_info_page.dart';
import 'package:studycafe/ui/pages/notice_page/notice_page.dart';
import 'package:studycafe/ui/pages/password_change_page/password_change_page.dart';
import 'package:studycafe/ui/pages/search_page/search_page.dart';
import 'package:studycafe/ui/pages/use_list_page/use_list_page.dart';

import '../ui/pages/find_email_page/find_email_page.dart';
import '../ui/pages/find_email_success_page/find_email_success_page.dart';
import '../ui/pages/find_passwod_page/find_passwod_page.dart';
import '../ui/pages/find_password_change_page/find_password_change_page.dart';
import '../ui/pages/main_page.dart';

class Move {
  static String mainPage = "/mainPage";

  //로그인 페이지
  static String loginPage = "/loginPage";

  //회원가입 페이지
  static String joinPage = "/joinPage";

  //이메일,비밀번호 찾기 페이지
  static String findEmailPage = "/findEmailPage";
  static String findEmailSuccessPage = "/findEmailSuccessPage";
  static String findPasswordPage = "/findPasswordPage";
  static String findPasswordChangePage = "/findPasswordChangePage";

  //장소검색 페이지
  static String searchPage = "/searchPage";

  //매장 상세보기 페이지
  static String detailPage = "/detailPage";

  //예약성공 페이지
  static String detailSuccessPage = "/detailSuccessPage";

  //내정보 페이지
  static String myInfoPage = "/myInfoPage";

  //페스워드변경 페이지
  static String passwordChangePage = "/passwordChangePage";

  //찜목록 페이지
  static String likeListPage = "/likeListPage";

  //이용내역 페이지
  static String useListPage = "/useListPage";

  //고객센터 페이지
  static String customCenterPage = "/customCenterPage";

  //공지사항 페이지
  static String noticePage = "/noticePage";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.mainPage: (context) => MainPage(),

    //로그인 페이지
    Move.loginPage: (context) => LoginPage(),

    //회원가입 페이지
    Move.joinPage: (context) => JoinPage(),

    //이메일,비밀번호 찾기 페이지
    Move.findEmailPage: (context) => FindEmailPage(),
    Move.findEmailSuccessPage: (context) => FindEmailSuccessPage(),
    Move.findPasswordPage: (context) => FindPasswordPage(),
    Move.findPasswordChangePage: (context) => FindPasswordChagePage(),

    //장소검색 페이지
    Move.searchPage: (context) => SearchPage(),

    //매장 상세보기 페이지
    Move.detailPage: (context) => DetailPage(),

    //예약성공 페이지
    Move.detailSuccessPage: (context) => DetailSuccessPage(),

    //내정보 페이지
    Move.myInfoPage: (context) => MyInfoPage(),

    //페스워드변경 페이지
    Move.passwordChangePage: (context) => PasswordChangePage(),

    //찜목록 페이지
    Move.likeListPage: (context) => LikeListPage(),

    //이용내역 페이지
    Move.useListPage: (context) => UseListPage(),

    //고객센터 페이지
    Move.customCenterPage: (context) => CustomCenterPage(),

    //공지사항 페이지
    Move.noticePage: (context) => NoticePage(),
  };
}
