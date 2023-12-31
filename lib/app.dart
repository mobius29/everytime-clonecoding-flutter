import 'package:everytime_flutter/screens/home_screen.dart';
import 'package:everytime_flutter/screens/select_timetable/select_timetable_screen.dart';
import 'package:everytime_flutter/screens/timetable/timetable_screen.dart';
import 'package:everytime_flutter/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: Themes.lightThemeData, initialRoute: '/', routes: {
      HomeScreen.routerName: (context) => const HomeScreen(),
      TimetableScreen.routerName: (context) => const TimetableScreen(),
      SelectTimetableScreen.routerName: (context) => const SelectTimetableScreen(),
    });
  }
}
