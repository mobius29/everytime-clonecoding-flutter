import 'package:everytime_flutter/mocks/timetable/timetable.dart';
import 'package:everytime_flutter/widgets/common/custom_navigation_bar.dart';
import 'package:everytime_flutter/widgets/timetable/appbar.dart';
import 'package:everytime_flutter/widgets/timetable/timetable.dart';
import 'package:flutter/material.dart';

class TimetableScreen extends StatelessWidget {
  final int idx;

  const TimetableScreen({Key? key, required this.idx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TimetableAppBar(
        year: 2023,
        semester: Semester.autumn,
        title: "시간표 1",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Timetable(timetable: MockTimetables.timetables[idx])],
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(
        currentTab: "timetable",
      ),
    );
  }
}
