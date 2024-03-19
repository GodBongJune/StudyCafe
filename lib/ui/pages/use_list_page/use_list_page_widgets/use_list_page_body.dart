import 'package:flutter/material.dart';
import 'package:studycafe/core/color.dart';
import 'package:studycafe/core/size.dart';

class UseListPageBody extends StatelessWidget {
  const UseListPageBody({super.key});

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
                "YYYY.MM.DD",
                style: TextStyle(
                  color: k9DColor,
                  fontSize: fontSmall,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Study Cafe Name",
                style: TextStyle(
                  color: kMainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: fontMedium,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "sub contents text",
                style: TextStyle(
                  color: k9DColor,
                  fontSize: fontRegular,
                ),
              ),
              SizedBox(height: 5),
              Divider(thickness: 1, color: kEEEEColor),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "YYYY.MM.DD",
                style: TextStyle(
                  color: k9DColor,
                  fontSize: fontSmall,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Study Cafe Name",
                style: TextStyle(
                  color: kMainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: fontMedium,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "sub contents text",
                style: TextStyle(
                  color: k9DColor,
                  fontSize: fontRegular,
                ),
              ),
              SizedBox(height: 5),
              Divider(thickness: 1, color: kEEEEColor),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "YYYY.MM.DD",
                style: TextStyle(
                  color: k9DColor,
                  fontSize: fontSmall,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Study Cafe Name",
                style: TextStyle(
                  color: kMainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: fontMedium,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "sub contents text",
                style: TextStyle(
                  color: k9DColor,
                  fontSize: fontRegular,
                ),
              ),
              SizedBox(height: 5),
              Divider(thickness: 1, color: kEEEEColor),
            ],
          ),
        ],
      ),
    );
  }
}
