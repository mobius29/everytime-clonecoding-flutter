import 'package:everytime_flutter/models/timetable.dart';
import 'package:everytime_flutter/utils/constants/enums/date.dart';

TimetableItem timetable1 = const TimetableItem(
  id: 0,
  title: "시간표 1",
  year: 2023,
  semester: Semester.autumn,
  classIds: [0, 1],
);

TimetableItem timetable2 = const TimetableItem(
  id: 1,
  title: "시간표 2",
  year: 2023,
  semester: Semester.autumn,
  classIds: [2, 3],
);

TimetableItem trash = const TimetableItem(
  id: 2,
  title: "쓰레기 시간표",
  year: 2023,
  semester: Semester.spring,
  classIds: [4],
);

List<TimetableItem> listTimetable = [
  timetable1,
  timetable2,
  trash,
];
