import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studycafe/core/color.dart';
import 'package:studycafe/core/size.dart';

class DetailPageBody extends StatefulWidget {
  const DetailPageBody({super.key});

  @override
  State<DetailPageBody> createState() => _DetailPageBodyState();
}

class _DetailPageBodyState extends State<DetailPageBody> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Image.asset("assets/images/study/study1.png", fit: BoxFit.fill),
            Positioned(
              top: 0,
              left: 0,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.04),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Study Cafe Name",
                      style: TextStyle(
                          color: kMainColor,
                          fontSize: fontMedium,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isLike = !isLike;
                            });
                          },
                          icon: Icon(
                              isLike
                                  ? CupertinoIcons.heart_fill
                                  : CupertinoIcons.heart,
                              color: isLike ? kEA4335Color : null),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "부산광역시 동구 중앙대로 270 6층",
                  style: TextStyle(
                    color: k9DColor,
                    fontSize: fontRegular,
                  ),
                ),
                SizedBox(height: 20),
                Divider(thickness: 1, color: kEEEEColor),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "매장 공지",
                      style: TextStyle(
                          color: kMainColor,
                          fontSize: fontMedium,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "자정 넘어 출입시 1층에서 비밀번호 1234를 누르고 들어오세요.",
                      style: TextStyle(
                        color: k9DColor,
                        fontSize: fontRegular,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "매장 소개",
                      style: TextStyle(
                          color: kMainColor,
                          fontSize: fontMedium,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "초량역 8번 출구에서 도보 약5분거리에 위치한 공유 오피스겸 스터디 카페입니다.",
                      style: TextStyle(
                        color: k9DColor,
                        fontSize: fontRegular,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "매장 연락처",
                      style: TextStyle(
                          color: kMainColor,
                          fontSize: fontMedium,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "010-0000-0000",
                      style: TextStyle(
                        color: k9DColor,
                        fontSize: fontRegular,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "매장 위치",
                      style: TextStyle(
                          color: kMainColor,
                          fontSize: fontMedium,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "부산광역시 동구 중앙대로 270 6층",
                      style: TextStyle(
                        color: k9DColor,
                        fontSize: fontRegular,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Image.asset("assets/images/detail/detail1.png",
                        width: double.infinity, fit: BoxFit.fill),
                    SizedBox(height: 10),
                    Image.asset(
                      "assets/images/detail/detail2.png",
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      "assets/images/detail/detail3.png",
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
