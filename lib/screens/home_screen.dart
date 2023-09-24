import 'package:everytime_flutter/widgets/home/appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: HomeAppBar(), body: Text("Hello, World!"));
  }
}
