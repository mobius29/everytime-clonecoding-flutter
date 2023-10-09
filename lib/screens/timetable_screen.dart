import 'package:everytime_flutter/mocks/timetable/timetable.dart';
import 'package:everytime_flutter/models/timetable.dart';
import 'package:everytime_flutter/widgets/common/custom_navigation_bar.dart';
import 'package:everytime_flutter/widgets/timetable/appbar.dart';
import 'package:everytime_flutter/widgets/timetable/timetable.dart';
import 'package:flutter/material.dart';

class TimetableScreen extends StatelessWidget {
  final int id;
  TimetableScreen({Key? key, required this.id}) : super(key: key);

  late final TimetableItem timetableItem = listTimetable.firstWhere((item) => item.id == id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TimetableAppBar(
        year: timetableItem.year,
        semester: timetableItem.semester,
        title: timetableItem.title,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Timetable(classIds: timetableItem.classIds)],
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(
        currentTab: "timetable",
      ),
    );
  }
}
