import 'dart:math';

import 'package:collection/collection.dart';
import 'package:everytime_flutter/mocks/timetable/classItem.dart';
import 'package:everytime_flutter/models/timetable.dart';
import 'package:everytime_flutter/utils/constants/enums/date.dart';
import 'package:flutter/material.dart';

typedef Tuple<T, U, V> = (T, U, V);

class Timetable extends StatelessWidget {
  final List<int> classIds;
  Timetable({Key? key, required this.classIds}) : super(key: key);

  static double horizontalMargin = 16;
  static double verticalMargin = 24;

  final List<Color> colorList = [
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.purple.shade100,
    Colors.pink.shade100,
    Colors.brown.shade100,
    Colors.grey.shade100,
  ];

  Tuple<int, int, int> getTableValues(List<ClassTime> classTimes) {
    return classTimes.fold(
      (9, 16, 4),
      (acc, e) => (min(acc.$1, e.startTime ~/ 12), max(acc.$2, e.endTime ~/ 12), max(acc.$3, e.day.index)),
    );
  }

  TableRow getTableHeader(List<Day> dayList) {
    final List<String> days = ["", ...dayList.map((e) => e.getDayName())];
    return TableRow(
      children: days
          .map((text) => Container(
              alignment: Alignment.center,
              height: 20,
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )))
          .toList(),
    );
  }

  TableRow getEmptyTableRow(int time, int maxDay) {
    final List<String> items = [time.toString(), ...List.generate(maxDay + 1, (index) => "")];

    return TableRow(
      children: items
          .map((text) => Container(
                alignment: Alignment.topRight,
                height: 90,
                child: Text(text, style: const TextStyle(fontSize: 12)),
              ))
          .toList(),
    );
  }

  List<Widget> getTableClassItems(ClassItem classItem, Color color, double itemWidth, int minHour) {
    return classItem.classTimes
        .map(
          (e) => Container(
              width: itemWidth,
              height: (e.endTime - e.startTime) * 90 / 12,
              margin:
                  EdgeInsets.fromLTRB(20 + itemWidth * e.day.index, (e.startTime - minHour * 12) * 90 / 12 + 20, 0, 0),
              decoration: BoxDecoration(color: color),
              child: Container(
                margin: const EdgeInsets.all(4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      classItem.courseName,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Colors.white),
                    ),
                    Text(
                      classItem.professor,
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              )),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final List<ClassItem> classes = classIds.map((id) => listClass.firstWhere((item) => item.id == id)).toList();
    final List<ClassTime> classTimes = classes.expand((e) => e.classTimes).toList();
    final (minHour, maxHour, maxDay) = getTableValues(classTimes);
    final cols = maxDay + 1;

    final dayList = Day.values.sublist(0, cols);
    final List<int> rows = List.generate(maxHour - minHour + 1, (index) => index + minHour);

    final itemWidth = (MediaQuery.of(context).size.width - 20) / cols;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontalMargin, vertical: verticalMargin),
      width: double.infinity,
      child: Stack(
        children: [
          Table(
            border: TableBorder.all(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(16),
            ),
            columnWidths: const {0: FixedColumnWidth(20)},
            children: [
              getTableHeader(dayList),
              ...rows.map((time) => getEmptyTableRow(time, maxDay)),
            ],
          ),
          ...classes
              .expandIndexed(
                  (idx, e) => getTableClassItems(e, colorList[idx], itemWidth - (horizontalMargin * 2) / cols, minHour))
              .toList(),
        ],
      ),
    );
  }
}
