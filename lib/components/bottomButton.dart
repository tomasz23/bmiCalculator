import 'package:flutter/material.dart';
import '../constants.dart';

class bottomButton extends StatelessWidget {
  const bottomButton({
    Key? key,
    this.onTap,
    required this.label,
  }) : super(key: key);

  final Function()? onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: kHighlightColor,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
