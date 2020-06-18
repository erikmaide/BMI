import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.touch});
  final IconData icon;
  final Function touch;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: touch,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 53.0,
        height: 53.0,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
