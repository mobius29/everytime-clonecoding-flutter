import 'package:flutter/material.dart';

class CardTimetableList extends StatelessWidget {
  const CardTimetableList({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        direction: Axis.vertical,
        spacing: 4,
        runSpacing: 4,
        children: children,
      ),
    );
  }
}
