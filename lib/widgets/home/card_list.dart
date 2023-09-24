import 'package:everytime_flutter/widgets/home/card_item.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: const [
          CardItem(),
          CardItem(),
          CardItem(),
        ],
      ),
    );
  }
}
