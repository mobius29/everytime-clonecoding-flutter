import 'package:everytime_flutter/mocks/timetable/class_times.dart';
import 'package:everytime_flutter/models/timetable.dart';

class MockClass {
  static Class machineLearning = Class(
    courseName: "기계학습",
    professor: "강재우",
    classTimes: [
      MockClassTimes.mondayTimes[0],
      MockClassTimes.wednesdayTimes[0],
    ],
  );

  static Class artificialIntelligence = Class(
    courseName: "인공지능",
    professor: "김현우",
    classTimes: [
      MockClassTimes.tuesdayTimes[1],
      MockClassTimes.thursdayTimes[1],
    ],
  );

  static Class dataStructure = Class(
    courseName: "자료구조",
    professor: "정원주",
    classTimes: [
      MockClassTimes.mondayTimes[2],
      MockClassTimes.wednesdayTimes[2],
    ],
  );

  static Class database = Class(
    courseName: "데이터베이스",
    professor: "정연돈",
    classTimes: [
      MockClassTimes.thursdayTimes[3],
      MockClassTimes.saturdayTimes[3],
    ],
  );

  static Class trash = Class(
    courseName: "쓰레기",
    professor: "차..",
    classTimes: [
      MockClassTimes.fridayTimes[4],
      MockClassTimes.sundayTimes[4],
    ],
  );
}
