import 'package:everytime_flutter/widgets/home/card_button.dart';
import 'package:everytime_flutter/widgets/home/card_button_list.dart';
import 'package:everytime_flutter/widgets/home/card_item.dart';
import 'package:everytime_flutter/widgets/home/card_timetable.dart';
import 'package:everytime_flutter/widgets/home/card_timetable_list.dart';
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
        children: [
          const CardItem(
            title: "기계학습",
            subTitle: "1시간 후 수업 시작",
            child: CardButtonList(
              children: [
                CardButton(
                  title: "메모",
                  icon: Icons.post_add,
                ),
                CardButton(
                  title: "할일",
                  icon: Icons.list,
                ),
              ],
            ),
          ),
          CardItem(
            title: "오늘의 수업",
            subTitle: "10월 1일 (일)",
            child: CardTimetableList(
              children: [
                CardTimetable(
                  date: DateTime.parse("2023-10-01T15:00:00.000Z"),
                  subject: "기계학습",
                ),
                CardTimetable(
                  date: DateTime.parse("2023-10-01T16:30:00.000Z"),
                  subject: "인공지능",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
