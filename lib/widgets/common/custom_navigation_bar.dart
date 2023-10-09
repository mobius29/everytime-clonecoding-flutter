import 'package:everytime_flutter/screens/home_screen.dart';
import 'package:everytime_flutter/screens/timetable/arguments.dart';
import 'package:everytime_flutter/screens/timetable/timetable_screen.dart';
import 'package:everytime_flutter/themes/color.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final String currentTab;

  const CustomNavigationBar({
    Key? key,
    required this.currentTab,
  }) : super(key: key);

  static List<Map<String, dynamic>> tabs = [
    {
      "name": "home",
      "icon": Icons.home_outlined,
      "link": HomeScreen.routerName,
      "args": null,
    },
    {
      "name": "timetable",
      "icon": Icons.dashboard_outlined,
      "link": TimetableScreen.routerName,
      "args": TimetableArguments(0),
    },
    {
      "name": "note",
      "icon": Icons.notes_outlined,
      "link": "/",
      "args": null,
    },
    {
      "name": "notification",
      "icon": Icons.notifications_outlined,
      "link": "/",
      "args": null,
    },
    {
      "name": "pin",
      "icon": Icons.push_pin_outlined,
      "link": "/",
      "args": null,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        decoration: const BoxDecoration(
          color: CustomColors.white,
          boxShadow: [
            BoxShadow(
              color: CustomColors.gray20,
              offset: Offset(0, -4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: tabs
              .map(
                (tab) => ElevatedButton(
                  onPressed: () => {
                    if (currentTab != tab["name"])
                      Navigator.popAndPushNamed(context, tab["link"], arguments: tab["args"])
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.white,
                    elevation: 0,
                    padding: const EdgeInsets.all(16),
                  ),
                  child: Icon(
                    tab["icon"],
                    size: 36,
                    color: currentTab == tab["name"] ? CustomColors.black : CustomColors.gray30,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
