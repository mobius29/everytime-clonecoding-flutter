import 'package:everytime_flutter/themes/color.dart';
import 'package:everytime_flutter/utils/constants/enums/date.dart';
import 'package:flutter/material.dart';

class TimetableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int year;
  final Semester semester;
  final String title;

  const TimetableAppBar({
    Key? key,
    required this.year,
    required this.semester,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$year년 ${semester.semester}학기",
            style: const TextStyle(
              fontSize: 12,
              color: CustomColors.red,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_box_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.list_outlined,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
