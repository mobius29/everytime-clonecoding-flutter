import 'package:flutter/material.dart';

class GradeCalculator extends StatelessWidget {
  const GradeCalculator({Key? key}) : super(key: key);

  Widget _buildGradeItem(String title, String current, String max) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        Text(title, style: const TextStyle(fontSize: 18)),
        const SizedBox(width: 8),
        Text(current, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red)),
        Text(" / $max", style: const TextStyle(fontSize: 14, color: Colors.grey))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("학점계산기", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Icon(Icons.edit_outlined, color: Colors.black, size: 28),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildGradeItem("평균 학점", 3.7.toString(), 4.5.toString()),
              const SizedBox(width: 32),
              _buildGradeItem("취득 학점", 125.toString(), 130.toString()),
            ],
          )
        ],
      ),
    );
  }
}
