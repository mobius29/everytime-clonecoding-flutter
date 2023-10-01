import 'package:everytime_flutter/themes/color.dart';
import 'package:flutter/material.dart';

class FavoriteBoardItem extends StatelessWidget {
  final String title;
  final String post;
  final bool isNew;

  const FavoriteBoardItem({
    Key? key,
    required this.title,
    required this.post,
    this.isNew = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              post,
              style: const TextStyle(
                fontSize: 14,
                color: CustomColors.gray50,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 20),
          isNew
              ? Container(
                  width: 14,
                  height: 14,
                  alignment: Alignment.center,
                  color: CustomColors.red,
                  child: const Text(
                    "N",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: CustomColors.white,
                    ),
                  ),
                )
              : const SizedBox(width: 14),
        ],
      ),
    );
  }
}
