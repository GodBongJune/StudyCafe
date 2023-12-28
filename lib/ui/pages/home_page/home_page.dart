import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studycafe/core/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: kMainColor),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "검색어를 입력하세요",
                          ),
                        ),
                      ),
                      Icon(CupertinoIcons.search, color: kMainColor),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.location),
                        SizedBox(width: 10),
                        Text("부산시 동구 초량동", style: TextStyle(color: kMainColor)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.5 / 1.3,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: studyItem.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
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
                        Text("Study Cafe Name"),
                        Text("sub contents text"),
                      ],
                    ),
                  );
                },
              ),
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
