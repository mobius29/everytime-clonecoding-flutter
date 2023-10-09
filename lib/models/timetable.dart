import 'package:everytime_flutter/utils/constants/enums/date.dart';

class ClassTime {
  final Day day;
  final int startTime;
  final int endTime;

  const ClassTime(
    this.day,
    this.startTime,
    this.endTime,
  );
}

class ClassItem {
  final int id;
  final String courseName;
  final String professor;
  final List<ClassTime> classTimes;

  const ClassItem({
    required this.id,
    required this.courseName,
    required this.professor,
    required this.classTimes,
  });
}

class TimetableItem {
  final int id;
  final String title;
  final int year;
  final Semester semester;
  final List<int> classIds;

  const TimetableItem({
    required this.id,
    required this.title,
    required this.year,
    required this.semester,
    required this.classIds,
  });
}

class TimetableList {
  final int id;
  final int year;
  final Semester semester;
  final List<int> timetableIds;

  const TimetableList({
    required this.id,
    required this.year,
    required this.semester,
    required this.timetableIds,
  });
}
