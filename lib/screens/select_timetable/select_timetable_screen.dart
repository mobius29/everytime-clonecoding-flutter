import 'package:everytime_flutter/widgets/select_timetable/appbar.dart';
import 'package:flutter/material.dart';

class SelectTimetableScreen extends StatelessWidget {
  static const routerName = "/timetable/select";
  const SelectTimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SelectTimetableScreenAppbar(),
      body: Center(child: Text("Select Timetable")),
    );
  }
}
