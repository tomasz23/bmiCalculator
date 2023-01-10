import 'package:flutter/material.dart';
import '../constants.dart';

class IconCardChild extends StatelessWidget {
  const IconCardChild({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: kIconColor,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
