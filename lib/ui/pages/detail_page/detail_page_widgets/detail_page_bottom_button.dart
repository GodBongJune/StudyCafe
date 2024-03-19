import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:studycafe/core/color.dart';
import 'package:studycafe/core/move.dart';
import 'package:studycafe/core/size.dart';
import 'package:table_calendar/table_calendar.dart';

class DetailPageBottomButton extends StatefulWidget {
  const DetailPageBottomButton({super.key});

  @override
  State<DetailPageBottomButton> createState() => _DetailPageBottomButtonState();
}

class _DetailPageBottomButtonState extends State<DetailPageBottomButton> {
  int peopleCount = 1;

  DateTime selectedDay = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  DateTime focusedDay = DateTime.now();

  String? formattedTime;
  Future<void> _showTimePicker(BuildContext context) async {
    // DateTime initialTime = DateTime.now();

    DateTime? pickedTime = await showModalBottomSheet(
      context: context,
      builder: (context) {
        DateTime? selectedTime;

        return Container(
          height: double.infinity,
          child: TimePickerSpinner(
            is24HourMode: false,
            normalTextStyle: TextStyle(
              fontSize: fontMedium,
              color: Colors.grey,
            ),
            highlightedTextStyle: TextStyle(
              fontSize: fontLarge,
              color: kMainColor,
              fontWeight: FontWeight.bold,
            ),
            spacing: MediaQuery.of(context).size.width * 0.2,
            itemHeight: MediaQuery.of(context).size.height * 0.1,
            onTimeChange: (DateTime time) {
              selectedTime = time;
              Logger().d(selectedTime);
            },
          ),
        );
      },
    );

    if (pickedTime == null) {
      formattedTime = DateFormat.Hm().format(pickedTime!);
      Logger().d("포멧타임 ${formattedTime}");
      // setState(() {
      //   Logger().d("다시 그려짐");
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        peopleCount = 1;
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.calendar),
                            SizedBox(width: 10),
                            Text(
                              "Date",
                              style: TextStyle(
                                color: kMainColor,
                                fontSize: fontMedium,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: SingleChildScrollView(
                            child: Container(
                              child: TableCalendar(
                                calendarFormat: CalendarFormat.week,
                                focusedDay: focusedDay,
                                firstDay: DateTime.now()
                                    .subtract(Duration(days: 365)),
                                lastDay:
                                    DateTime.now().add(Duration(days: 365)),
                                onDaySelected: (DateTime selectedDay,
                                    DateTime focusedDay) {
                                  // 선택된 날짜의 상태를 갱신합니다.
                                  setState(() {
                                    this.selectedDay = selectedDay;
                                    this.focusedDay = focusedDay;
                                  });
                                },
                                selectedDayPredicate: (DateTime day) {
                                  // selectedDay 와 동일한 날짜의 모양을 바꿔줍니다.
                                  Logger().d("${selectedDay}");
                                  return isSameDay(selectedDay, day);
                                },
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.time, color: kMainColor),
                                SizedBox(width: 10),
                                Text(
                                  "Time",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: fontMedium,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () async {
                                await _showTimePicker(context);
                                if (formattedTime != null) {
                                  setState(() {});
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: Text(
                                  formattedTime ??
                                      DateFormat.Hm().format(DateTime.now()),
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: fontMedium,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.person, color: kMainColor),
                                SizedBox(width: 10),
                                Text(
                                  "People",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: fontMedium,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(CupertinoIcons.minus_circle),
                                  color:
                                      peopleCount == 1 ? kC8Color : kMainColor,
                                  onPressed: () {
                                    if (peopleCount > 1) {
                                      setState(() {
                                        peopleCount--;
                                      });
                                    }
                                  },
                                ),
                                Text("$peopleCount"),
                                IconButton(
                                  icon: Icon(CupertinoIcons.plus_circle),
                                  color: kMainColor,
                                  onPressed: () {
                                    setState(() {
                                      peopleCount++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .popAndPushNamed(Move.detailSuccessPage);
                          },
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              color: kMainColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "예약하기",
                                style: TextStyle(
                                  fontSize: fontMedium,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            "예약하기",
            style: TextStyle(
              fontSize: fontMedium,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
