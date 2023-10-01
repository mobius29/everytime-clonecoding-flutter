import 'package:everytime_flutter/themes/color.dart';
import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Color iconColor;

  const LinkButton({
    Key? key,
    required this.text,
    required this.iconData,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            fixedSize: const Size(50, 50),
            shape: const CircleBorder(),
            backgroundColor: CustomColors.gray10,
          ),
          child: Icon(iconData, color: iconColor, size: 30),
        ),
        const SizedBox(height: 4),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: CustomColors.gray90,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
