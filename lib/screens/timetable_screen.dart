import 'package:everytime_flutter/widgets/common/custom_navigation_bar.dart';
import 'package:everytime_flutter/widgets/timetable/appbar.dart';
import 'package:flutter/material.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TimetableAppBar(
        year: 2023,
        semester: Semester.autumn,
        title: "시간표 1",
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentTab: "timetable",
      ),
    );
  }
}
