import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/size.dart';

class SearchPageBody extends StatefulWidget {
  const SearchPageBody({super.key});

  @override
  State<SearchPageBody> createState() => _SearchPageBodyState();
}

class _SearchPageBodyState extends State<SearchPageBody> {
  List<Widget> searchResult = [
    Image.asset("assets/images/study/study1.png", fit: BoxFit.fill),
    Image.asset("assets/images/study/study2.png", fit: BoxFit.fill),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.065,
            decoration: BoxDecoration(
              border: Border.all(color: kEEEEColor),
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "검색어를 입력하세요",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Icon(CupertinoIcons.search, color: kMainColor),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.5 / 1.4,
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: searchResult.length,
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
                        child: searchResult[index],
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
                      style: TextStyle(color: k9DColor, fontSize: fontRegular),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
