// ignore_for_file: non_constant_identifier_names

import 'package:everytime_flutter/models/timetable.dart';
import 'package:everytime_flutter/utils/constants/enums/date.dart';

TimetableList _2023_3 = const TimetableList(
  id: 0,
  year: 2023,
  semester: Semester.autumn,
  timetableIds: [0, 1],
);

TimetableList _2023_1 = const TimetableList(
  id: 1,
  year: 2023,
  semester: Semester.spring,
  timetableIds: [2],
);

List<TimetableList> listTimetableList = [
  _2023_3,
  _2023_1,
];
