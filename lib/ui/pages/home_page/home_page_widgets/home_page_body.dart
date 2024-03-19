import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/color.dart';
import '../../../../core/move.dart';
import '../../../../core/size.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  List<Widget> studyItem = [
    Image.asset("assets/images/study/study1.png", fit: BoxFit.fill),
    Image.asset("assets/images/study/study2.png", fit: BoxFit.fill),
    Image.asset("assets/images/study/study3.png", fit: BoxFit.fill),
    Image.asset("assets/images/study/study4.png", fit: BoxFit.fill),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              child: SvgPicture.asset(
                "assets/images/guide/guide.svg",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: -25,
              left: 16.0,
              right: 16.0,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Move.searchPage);
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    border: Border.all(color: kEEEEColor),
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "검색어를 입력하세요",
                                style: TextStyle(
                                    color: kC8Color, fontSize: fontRegular),
                              ),
                              Icon(CupertinoIcons.search, color: kMainColor),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.065),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(CupertinoIcons.location),
                      SizedBox(width: 10),
                      Text(
                        "부산시 동구 초량동",
                        style: TextStyle(
                          color: kMainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: fontRegular,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.5 / 1.4,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: studyItem.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(Move.detailPage);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: AspectRatio(
                            aspectRatio:
                                1.5 / 0.9, // Adjust the aspect ratio as needed
                            child: studyItem[index],
                          ),
                        ),
                        SizedBox(height: 13),
                        Text(
                          "Study Cafe Name",
                          style: TextStyle(
                              color: kMainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: fontMedium),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "sub contents text",
                          style:
                              TextStyle(color: k9DColor, fontSize: fontRegular),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              CarouselSlider(
                items: [
                  Image.asset("assets/images/banner/banner1.png",
                      fit: BoxFit.cover),
                  Image.asset("assets/images/banner/banner2.png",
                      fit: BoxFit.cover),
                  Image.asset("assets/images/banner/banner3.png",
                      fit: BoxFit.cover),
                  Image.asset("assets/images/banner/banner4.png",
                      fit: BoxFit.cover),
                  Image.asset("assets/images/banner/banner5.png",
                      fit: BoxFit.cover),
                  Image.asset("assets/images/banner/banner6.png",
                      fit: BoxFit.cover),
                ],
                options: CarouselOptions(
                  aspectRatio: 3 / 1,
                  viewportFraction: 1.0,
                  autoPlay: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
