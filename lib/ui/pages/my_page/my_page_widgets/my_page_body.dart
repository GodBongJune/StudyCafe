import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studycafe/core/color.dart';
import 'package:studycafe/core/move.dart';
import 'package:studycafe/core/size.dart';

class MyPageBody extends StatefulWidget {
  final Function(int) onNavigateToPage;

  const MyPageBody({super.key, required this.onNavigateToPage});

  @override
  State<MyPageBody> createState() => _MyPageBodyState();
}

class _MyPageBodyState extends State<MyPageBody> {
  void navigateToPage(int pageIndex) {
    widget.onNavigateToPage(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.21,
              color: kMainColor,
            ),
            Positioned(
              left: 16,
              bottom: 50,
              child: Text(
                "엠바스님",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontXlarge,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(Move.myInfoPage);
                },
                child: Row(
                  children: [
                    Icon(CupertinoIcons.person, color: kMainColor),
                    SizedBox(width: 10),
                    Text(
                      "내정보 관리",
                      style: TextStyle(color: kMainColor, fontSize: fontMedium),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 1, color: kEEEEColor),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  navigateToPage(0);
                },
                child: Row(
                  children: [
                    Icon(CupertinoIcons.heart, color: kMainColor),
                    SizedBox(width: 10),
                    Text(
                      "찜목록",
                      style: TextStyle(color: kMainColor, fontSize: fontMedium),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 1, color: kEEEEColor),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Move.useListPage);
                },
                child: Row(
                  children: [
                    Icon(CupertinoIcons.list_bullet, color: kMainColor),
                    SizedBox(width: 10),
                    Text(
                      "이용 내역",
                      style: TextStyle(color: kMainColor, fontSize: fontMedium),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 1, color: kEEEEColor),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Move.noticePage);
                },
                child: Row(
                  children: [
                    Icon(CupertinoIcons.text_bubble, color: kMainColor),
                    SizedBox(width: 10),
                    Text(
                      "공지사항",
                      style: TextStyle(color: kMainColor, fontSize: fontMedium),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 1, color: kEEEEColor),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Move.customCenterPage);
                },
                child: Row(
                  children: [
                    Icon(CupertinoIcons.phone, color: kMainColor),
                    SizedBox(width: 10),
                    Text(
                      "고객센터",
                      style: TextStyle(color: kMainColor, fontSize: fontMedium),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 1, color: kEEEEColor),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.logout, color: kMainColor),
                    SizedBox(width: 10),
                    Text(
                      "로그아웃",
                      style: TextStyle(color: kMainColor, fontSize: fontMedium),
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 1, color: kEEEEColor),
          ],
        ),
      ],
    );
  }
}
