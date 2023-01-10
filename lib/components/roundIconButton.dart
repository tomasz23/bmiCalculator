import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, this.onPressed, this.iconData})
      : super(key: key);
  final IconData? iconData;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
