import 'package:everytime_flutter/themes/color.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    Key? key,
    required this.current_tab,
  }) : super(key: key);

  final String current_tab;

  static const List<Map<String, dynamic>> tabs = [
    {
      "name": "home",
      "icon": Icons.home_outlined,
    },
    {
      "name": "board",
      "icon": Icons.dashboard_outlined,
    },
    {
      "name": "note",
      "icon": Icons.notes_outlined,
    },
    {
      "name": "notification",
      "icon": Icons.notifications_outlined,
    },
    {
      "name": "pin",
      "icon": Icons.push_pin_outlined,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: tabs
              .map(
                (tab) => Icon(
                  tab["icon"],
                  size: 36,
                  color: current_tab == tab["name"]
                      ? CustomColors.black
                      : CustomColors.gray30,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
