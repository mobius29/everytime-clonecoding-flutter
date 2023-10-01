import 'package:everytime_flutter/widgets/common/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomNavigationBar(currentTab: "timetable"),
    );
  }
}
