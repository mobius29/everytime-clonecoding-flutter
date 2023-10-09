// ignore_for_file: file_names

import 'package:everytime_flutter/models/timetable.dart';
import 'package:everytime_flutter/utils/constants/enums/date.dart';

ClassItem machineLearning = const ClassItem(
  id: 0,
  courseName: "기계학습",
  professor: "강재우",
  classTimes: [
    ClassTime(Day.mon, 108, 123),
    ClassTime(Day.wed, 108, 123),
  ],
);

ClassItem artificialIntelligence = const ClassItem(
  id: 1,
  courseName: "인공지능",
  professor: "김현우",
  classTimes: [
    ClassTime(Day.tue, 154, 243),
    ClassTime(Day.thu, 154, 243),
  ],
);

ClassItem dataStructure = const ClassItem(
  id: 2,
  courseName: "자료구조",
  professor: "정원주",
  classTimes: [
    ClassTime(Day.mon, 172, 187),
    ClassTime(Day.wed, 172, 187),
  ],
);

ClassItem database = const ClassItem(
  id: 3,
  courseName: "데이터베이스",
  professor: "정연돈",
  classTimes: [
    ClassTime(Day.sat, 108, 123),
  ],
);

ClassItem trash = const ClassItem(
  id: 4,
  courseName: "쓰레기",
  professor: "???",
  classTimes: [
    ClassTime(Day.sun, 108, 123),
  ],
);

List<ClassItem> listClass = [
  machineLearning,
  artificialIntelligence,
  dataStructure,
  database,
  trash,
];
