import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  final Function onPress;
  ReUsableCard({@required this.cardColor, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
