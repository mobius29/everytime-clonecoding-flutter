import 'package:everytime_flutter/widgets/common/custom_navigation_bar.dart';
import 'package:everytime_flutter/widgets/home/appbar.dart';
import 'package:everytime_flutter/widgets/home/card_list.dart';
import 'package:everytime_flutter/widgets/home/favorite_board.dart';
import 'package:everytime_flutter/widgets/home/link_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardList(),
              LinkList(),
              FavoriteBoard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(current_tab: "home"),
    );
  }
}
