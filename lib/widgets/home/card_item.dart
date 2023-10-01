import 'package:everytime_flutter/themes/color.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.title,
    required this.subTitle,
    this.child,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(
          color: CustomColors.gray30,
          width: 1,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: 300,
        height: 80,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 16, top: 12),
                  child: const Icon(Icons.schedule_outlined),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title),
                      Text(
                        subTitle,
                        style: const TextStyle(
                          color: CustomColors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: child,
            )
          ],
        ),
      ),
    );
  }
}
