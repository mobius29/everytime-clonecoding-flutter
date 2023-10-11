import 'package:everytime_flutter/mocks/timetable/timetable.dart';
import 'package:everytime_flutter/models/timetable.dart';
import 'package:everytime_flutter/screens/timetable/arguments.dart';
import 'package:everytime_flutter/widgets/common/custom_navigation_bar.dart';
import 'package:everytime_flutter/widgets/timetable/appbar.dart';
import 'package:everytime_flutter/widgets/timetable/grade_calculator.dart';
import 'package:everytime_flutter/widgets/timetable/timetable.dart';
import 'package:flutter/material.dart';

class TimetableScreen extends StatelessWidget {
  static const routerName = "/timetable";
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as TimetableArguments;
    final TimetableItem timetableItem = listTimetable.firstWhere((item) => item.id == args.id);

    return Scaffold(
      appBar: TimetableAppBar(
        year: timetableItem.year,
        semester: timetableItem.semester,
        title: timetableItem.title,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Timetable(classIds: timetableItem.classIds), const GradeCalculator()],
        ),
      ),
      bottomNavigationBar: const CustomNavigationBar(
        currentTab: "timetable",
      ),
    );
  }
}
