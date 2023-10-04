import 'package:everytime_flutter/utils/constants/enums/day.dart';

class ClassTime {
  final Day day;
  final int startHour;
  final int startMinute;
  final int endHour;
  final int endMinute;

  const ClassTime(
    this.day,
    this.startHour,
    this.startMinute,
    this.endHour,
    this.endMinute,
  );
}

class Class {
  final String courseName;
  final String professor;
  final List<ClassTime> classTimes;

  const Class({
    required this.courseName,
    required this.professor,
    required this.classTimes,
  });
}

class TimetableData {
  final int id;
  final String title;
  final List<Class> classTimes;

  const TimetableData({
    required this.id,
    required this.title,
    required this.classTimes,
  });
}
