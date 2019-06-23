import 'package:flutter_web/material.dart';

class Slide2 extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Row(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            color: Colors.red,
            width: deviceWidth * .33, 
            child: Image.network('assets/images/shadow.jpg')
          ),
          Expanded(child: Text('Slide 2')),
        ]);
  }
}