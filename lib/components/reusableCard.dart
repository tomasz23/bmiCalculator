import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, required this.colorTile, this.cardChild, this.tapFunction});

  final Color colorTile;
  final Widget? cardChild;
  final Function()? tapFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapFunction,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colorTile,
        ),
      ),
    );
  }
}
