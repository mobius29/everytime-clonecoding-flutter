import 'package:everytime_flutter/mocks/timetable/timetable.dart';
import 'package:everytime_flutter/models/timetable.dart';
import 'package:everytime_flutter/screens/timetable/arguments.dart';
import 'package:everytime_flutter/screens/timetable/timetable_screen.dart';
import 'package:flutter/material.dart';

class TimetableBlock extends StatelessWidget {
  final TimetableList timetableList;
  const TimetableBlock({Key? key, required this.timetableList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final timetableItems = timetableList.timetableIds.map((id) => listTimetable.firstWhere((e) => e.id == id));

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: Text(
              "${timetableList.year}년 ${timetableList.semester.getSemester()}학기",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ...timetableItems.map(
            (e) => Container(
              alignment: Alignment.centerLeft,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  TimetableArguments arguments = TimetableArguments(e.id);
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    TimetableScreen.routerName,
                    (_) => false,
                    arguments: arguments,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                ),
                child: Row(
                  children: [
                    Text(e.title, style: const TextStyle(fontSize: 18)),
                    const SizedBox(width: 8),
                    Container(child: null),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
