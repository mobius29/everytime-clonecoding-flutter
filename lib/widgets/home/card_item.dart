import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 300,
        height: 160,
        padding: const EdgeInsets.all(20),
        child: const Row(
          children: [
            Icon(Icons.schedule_outlined),
            Text("시간표"),
          ],
        ),
      ),
    );
  }
}
