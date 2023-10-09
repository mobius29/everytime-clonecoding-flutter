import 'package:everytime_flutter/screens/select_timetable/select_timetable_screen.dart';
import 'package:flutter/material.dart';

class SelectTimetableScreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const SelectTimetableScreenAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back),
      ),
      title: const Text("시간표 목록"),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () => Navigator.pushNamed(context, SelectTimetableScreen.routerName),
          icon: const Icon(Icons.add_box_outlined),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
