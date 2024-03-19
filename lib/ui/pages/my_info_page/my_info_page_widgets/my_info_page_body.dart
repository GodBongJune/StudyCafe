import 'package:flutter/material.dart';
import 'package:studycafe/core/move.dart';

import '../../../../core/color.dart';
import '../../../../core/size.dart';

class MyInfoPageBody extends StatelessWidget {
  const MyInfoPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "이름",
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
                          hintText: "김철수",
                          hintStyle: TextStyle(color: k9DColor),
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
                "휴대폰 번호",
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
                          hintText: "010-0000-0000",
                          hintStyle: TextStyle(color: k9DColor),
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
                "이메일",
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
                          hintText: "aaa@aaa.com",
                          hintStyle: TextStyle(color: k9DColor),
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
                      child: Row(
                        children: [
                          Text("*******", style: TextStyle(color: k9DColor)),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, Move.passwordChangePage);
                            },
                            child: Text(
                              "변경",
                              style: TextStyle(
                                  color: kMainColor,
                                  fontSize: fontMedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
