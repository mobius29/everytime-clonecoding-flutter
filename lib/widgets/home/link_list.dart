import 'package:everytime_flutter/themes/color.dart';
import 'package:everytime_flutter/widgets/home/link/link_button.dart';
import 'package:flutter/material.dart';

class LinkItem {
  final String text;
  final IconData iconData;
  final Color iconColor;

  const LinkItem({
    required this.text,
    required this.iconData,
    required this.iconColor,
  });
}

class LinkList extends StatelessWidget {
  const LinkList({
    Key? key,
  }) : super(key: key);

  static const List<LinkItem> items = [
    LinkItem(
      text: "학교\n홈",
      iconData: Icons.home,
      iconColor: CustomColors.red,
    ),
    LinkItem(
      text: "열람실\n현황",
      iconData: Icons.menu_book,
      iconColor: CustomColors.yellow70,
    ),
    LinkItem(
      text: "KUPID",
      iconData: Icons.language,
      iconColor: CustomColors.blue60,
    ),
    LinkItem(
      text: "셔틀\n버스",
      iconData: Icons.savings,
      iconColor: CustomColors.yellow40,
    ),
    LinkItem(
      text: "학사\n공지",
      iconData: Icons.campaign,
      iconColor: CustomColors.blue20,
    ),
    LinkItem(
      text: "학사\n일정",
      iconData: Icons.calendar_month,
      iconColor: CustomColors.green20,
    ),
    LinkItem(
      text: "도서관",
      iconData: Icons.menu_book,
      iconColor: CustomColors.yellow20,
    ),
    LinkItem(
      text: "웹메일",
      iconData: Icons.language,
      iconColor: CustomColors.blue60,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: items
              .map((item) => LinkButton(
                    text: item.text,
                    iconData: item.iconData,
                    iconColor: item.iconColor,
                  ))
              .toList()),
    );
  }
}
