import 'package:everytime_flutter/themes/color.dart';
import 'package:flutter/material.dart';

class CardTimetable extends StatelessWidget {
  const CardTimetable({
    Key? key,
    required this.date,
    required this.subject,
  }) : super(key: key);

  final DateTime date;
  final String subject;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Text(
            '${date.hour}:${date.minute < 10 ? '0' : ''}${date.minute}',
            style: const TextStyle(
              fontSize: 14,
              color: CustomColors.gray50,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            subject,
            style: const TextStyle(
              fontSize: 14,
              color: CustomColors.gray80,
            ),
          ),
        ],
      ),
    );
  }
}
