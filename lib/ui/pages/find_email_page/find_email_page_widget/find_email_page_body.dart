import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studycafe/core/color.dart';

import '../../../../core/move.dart';

class FindEmailPageBody extends StatefulWidget {
  const FindEmailPageBody({super.key});

  @override
  State<FindEmailPageBody> createState() => _FindEmailPageBodyState();
}

class _FindEmailPageBodyState extends State<FindEmailPageBody> {
  List<String> phoneList = <String>["SKT", "KT", "LG", "알뜰폰"];
  String phone = "SKT";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: k9DColor),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "이름",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: k9DColor),
                                ),
                                Expanded(
                                  child: Container(
                                    width: 270,
                                    constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none),
                                      style: TextStyle(
                                          color: k9DColor,
                                          decorationThickness: 0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: k9DColor),
                            ),
                            child: Center(
                              child: DropdownButton(
                                underline: SizedBox.shrink(),
                                value: phone,
                                items: phoneList.map((String item) {
                                  return DropdownMenuItem<String>(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        "$item",
                                        style: TextStyle(color: kMainColor),
                                      ),
                                    ),
                                    value: item,
                                  );
                                }).toList(),
                                style: TextStyle(
                                  color: k9DColor,
                                  fontWeight: FontWeight.normal,
                                ),
                                onChanged: (dynamic value) {
                                  setState(() {
                                    phone = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: k9DColor),
                            ),
                            child: Center(
                              child: TextFormField(
                                keyboardType:
                                    TextInputType.number, // 숫자만 입력 가능하도록 설정
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter
                                      .digitsOnly // 숫자만 허용하도록 설정
                                ],
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle:
                                      TextStyle(fontSize: 13, color: k9DColor),
                                ),
                                style: TextStyle(
                                    color: k9DColor, decorationThickness: 0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.075,
            decoration: BoxDecoration(
              color: kMainColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextButton(
              child: Text("다음"),
              onPressed: () {
                Navigator.pushNamed(context, Move.findEmailSuccessPage);
              },
            ),
          ),
        ],
      ),
    );
  }
}
