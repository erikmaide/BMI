import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new ReUsableCard(cardColor: activeCardColor),
                ),
                Expanded(
                  child: new ReUsableCard(cardColor: activeCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: new ReUsableCard(cardColor: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new ReUsableCard(cardColor: activeCardColor),
                ),
                Expanded(
                  child: new ReUsableCard(cardColor: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReUsableCard extends StatelessWidget {
  final Color cardColor;
  ReUsableCard({@required this.cardColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
