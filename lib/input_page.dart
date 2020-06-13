import 'package:flutter/material.dart';

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
                  child: new ReUsableCard(cardColor: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: new ReUsableCard(cardColor: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: new ReUsableCard(cardColor: Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new ReUsableCard(cardColor: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: new ReUsableCard(cardColor: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReUsableCard extends StatelessWidget {
  final Color cardColor;
  ReUsableCard({@required gitthis.cardColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
