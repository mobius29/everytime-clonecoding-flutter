import 'package:everytime_flutter/themes/color.dart';
import 'package:flutter/material.dart';

class BoardTitle extends StatelessWidget {
  final String title;

  const BoardTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "즐겨찾는 게시판",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Row(
          children: [
            Text(
              "더보기",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: CustomColors.red,
              ),
            ),
            Icon(
              Icons.chevron_right_outlined,
              size: 20,
              color: CustomColors.red,
            ),
          ],
        )
      ],
    );
  }
}
