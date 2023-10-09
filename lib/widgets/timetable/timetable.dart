import 'package:everytime_flutter/mocks/timetable/classItem.dart';
import 'package:everytime_flutter/models/timetable.dart';
import 'package:everytime_flutter/widgets/timetable/table/header.dart';
import 'package:flutter/material.dart';

class Timetable extends StatelessWidget {
  final List<int> classIds;
  Timetable({Key? key, required this.classIds}) : super(key: key);

  late final List<ClassItem> classes = classIds
      .map((id) => listClass.firstWhere((item) => item.id == id))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      width: double.infinity,
      child: Table(
        border: TableBorder.all(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(16),
        ),
        columnWidths: const {
          0: FractionColumnWidth(0.05),
        },
        children: [
          TableRow(
            children: ["", "월", "화", "수", "목", "금"]
                .map((text) => TimetableHeaderItem(text: text))
                .toList(),
          ),
        ],
      ),
    );
  }
}
