import 'package:flutter/material.dart';

class CardButtonList extends StatelessWidget {
  const CardButtonList({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Row(children: children),
    );
  }
}
