import 'package:everytime_flutter/themes/color.dart';
import 'package:everytime_flutter/widgets/home/common/board_title.dart';
import 'package:flutter/material.dart';

class BoardFrame extends StatelessWidget {
  final String title;
  final Widget child;

  const BoardFrame({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: CustomColors.gray20,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(children: [
        BoardTitle(title: title),
        child,
      ]),
    );
  }
}
