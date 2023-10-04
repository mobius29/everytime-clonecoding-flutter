import 'package:everytime_flutter/mocks/timetable/class.dart';
import 'package:everytime_flutter/models/timetable.dart';

class MockTimetables {
  static TimetableData timetable1 = TimetableData(
    id: 0,
    title: "시간표 1",
    classTimes: [MockClass.artificialIntelligence, MockClass.machineLearning],
  );

  static TimetableData timetable2 = TimetableData(
    id: 1,
    title: "시간표 2",
    classTimes: [MockClass.dataStructure, MockClass.database],
  );

  static TimetableData trash = TimetableData(
    id: 2,
    title: "쓰레기 시간표",
    classTimes: [MockClass.trash],
  );

  static List<TimetableData> timetables = [
    timetable1,
    timetable2,
    trash,
  ];
}
