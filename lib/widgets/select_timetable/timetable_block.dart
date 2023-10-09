import 'package:flutter/material.dart';

class TimetableBlock extends StatelessWidget {
  const TimetableBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: const Text("2023년 2학기",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: Row(
              children: [
                const Text("시간표 이름", style: TextStyle(fontSize: 18, color: Colors.black)),
                const SizedBox(width: 8),
                Container(child: null),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            child: Row(
              children: [
                const Text("시간표 이름", style: TextStyle(fontSize: 18, color: Colors.black)),
                const SizedBox(width: 8),
                Container(child: null),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
