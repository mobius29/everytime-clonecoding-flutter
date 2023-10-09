import 'package:everytime_flutter/screens/home_screen.dart';
import 'package:everytime_flutter/screens/timetable_screen.dart';
import 'package:everytime_flutter/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Themes.lightThemeData,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/timetable': (context) => TimetableScreen(id: 0),
        });
  }
}
