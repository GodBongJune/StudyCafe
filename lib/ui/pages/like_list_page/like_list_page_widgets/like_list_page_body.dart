import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../../core/move.dart';
import '../../../../core/size.dart';

class LikeListPageBody extends StatefulWidget {
  const LikeListPageBody({Key? key}) : super(key: key);

  @override
  State<LikeListPageBody> createState() => _LikeListPageBodyState();
}

class _LikeListPageBodyState extends State<LikeListPageBody> {
  List<Widget> studyItem = [
    Image.asset("assets/images/study/study1.png", fit: BoxFit.fill),
    Image.asset("assets/images/study/study2.png", fit: BoxFit.fill),
    Image.asset("assets/images/study/study3.png", fit: BoxFit.fill),
    Image.asset("assets/images/study/study4.png", fit: BoxFit.fill),
    Image.asset("assets/images/study/study1.png", fit: BoxFit.fill),
    Image.asset("assets/images/study/study2.png", fit: BoxFit.fill),
    Image.asset("assets/images/study/study3.png", fit: BoxFit.fill),
    Image.asset("assets/images/study/study4.png", fit: BoxFit.fill),
  ];

  bool likeList = false;

  bool deleteBox = false;
  late List<bool> checkboxStates;

  @override
  void initState() {
    super.initState();
    checkboxStates = List.filled(studyItem.length, false);
  }

  void resetCheckboxStates() {
    setState(() {
      deleteBox = false;
      checkboxStates = List.filled(studyItem.length, false);
    });
  }

  void handleSelectAll(bool selectAll) {
    setState(() {
      for (int i = 0; i < checkboxStates.length; i++) {
        checkboxStates[i] = selectAll;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                if (!deleteBox)
                  Container(
                    height: MediaQuery.of(context).size.height * 0.03,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            child: Icon(Icons.settings),
                            onTap: () {
                              setState(() {
                                deleteBox = !deleteBox;
                                if (!deleteBox) {
                                  resetCheckboxStates();
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                if (deleteBox)
                  Container(
                    height: MediaQuery.of(context).size.height * 0.03,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              handleSelectAll(true);
                            },
                            child: Text(
                              "전체선택",
                              style: TextStyle(
                                  color: k9DColor, fontSize: fontRegular),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                deleteBox = false;
                              });
                            },
                            child: Text(
                              "취소",
                              style: TextStyle(
                                  color: k9DColor, fontSize: fontRegular),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GridView.builder(
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
                      return Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(Move.detailPage);
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: AspectRatio(
                                    aspectRatio: 1.5 / 0.9,
                                    child: studyItem[index],
                                  ),
                                ),
                                SizedBox(height: 13),
                                Text(
                                  "Study Cafe Name",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: fontMedium,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  "sub contents text",
                                  style: TextStyle(
                                    color: k9DColor,
                                    fontSize: fontRegular,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (deleteBox)
                            Positioned(
                              top: -5,
                              left: -5,
                              child: Container(
                                child: Checkbox(
                                  checkColor: Colors.blue,
                                  value: checkboxStates[index],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  side: BorderSide(
                                    width: 1,
                                    color: checkboxStates[index]
                                        ? Colors.blue
                                        : Colors.white,
                                  ),
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                    (Set<MaterialState> states) {
                                      if (states
                                          .contains(MaterialState.selected)) {
                                        return Colors.white;
                                      }
                                      return Colors.white;
                                    },
                                  ),
                                  onChanged: (value) {
                                    setState(
                                      () {
                                        checkboxStates[index] = value!;
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        if (deleteBox)
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: kMainColor,
                ),
                onPressed: () {},
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        for (int i = checkboxStates.length - 1; i >= 0; i--) {
                          if (checkboxStates[i]) {
                            studyItem.removeAt(i);
                            checkboxStates.removeAt(i);
                          }
                        }
                        deleteBox = !deleteBox;
                      });
                    },
                    child: Center(
                      child: Text(
                        "선택삭제",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontMedium,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
