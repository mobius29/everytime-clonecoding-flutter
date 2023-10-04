import 'package:everytime_flutter/models/timetable.dart';
import 'package:flutter/material.dart';

class Timetable extends StatelessWidget {
  final TimetableData timetable;

  const Timetable({
    Key? key,
    required this.timetable,
  }) : super(key: key);

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
            children: [
              Container(),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "월",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "화",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "수",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "목",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "금",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
