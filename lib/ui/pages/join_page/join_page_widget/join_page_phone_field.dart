import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/color.dart';

class JoinPagePhoneField extends StatelessWidget {
  final TextEditingController joinPhone;

  JoinPagePhoneField({super.key, required this.joinPhone});

  bool focusPhone = false;

  List<String> phoneList = <String>["SKT", "KT", "LG", "알뜰폰"];

  String phone = "SKT";

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          child: Column(
            children: [
              Focus(
                onFocusChange: (value) {
                  setState(() {
                    focusPhone = value;
                  });
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: focusPhone ? kMainColor : k9DColor),
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
                                color: focusPhone ? kMainColor : k9DColor,
                                fontWeight: focusPhone
                                    ? FontWeight.bold
                                    : FontWeight.normal,
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
                            border: Border.all(
                                color: focusPhone ? kMainColor : k9DColor),
                          ),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: TextFormField(
                                controller: joinPhone,
                                keyboardType:
                                    TextInputType.number, // 숫자만 입력 가능하도록 설정
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter
                                      .digitsOnly // 숫자만 허용하도록 설정
                                ],
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      fontSize: 13,
                                      color:
                                          focusPhone ? kMainColor : k9DColor),
                                ),
                                style: TextStyle(
                                    color: focusPhone ? kMainColor : k9DColor,
                                    decorationThickness: 0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        );
      },
    );
  }
}
