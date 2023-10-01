import 'package:everytime_flutter/widgets/home/card_button.dart';
import 'package:everytime_flutter/widgets/home/card_button_list.dart';
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
          CardItem(
            title: "기계학습",
            subTitle: "1시간 후 수업 시작",
            child: CardButtonList(
              children: [
                CardButton(
                  title: "메모",
                  icon: Icon(Icons.post_add),
                ),
                CardButton(
                  title: "할일",
                  icon: Icon(Icons.list),
                ),
              ],
            ),
          ),
          CardItem(title: "오늘의 수업", subTitle: "10월 1일 (일)"),
        ],
      ),
    );
  }
}
