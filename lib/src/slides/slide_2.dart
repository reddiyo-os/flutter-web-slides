import 'package:flutter_web/material.dart';

import '../utils/custom_colors.dart';
import '../utils/styles.dart';

class Slide2 extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Row(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            color: CustomColors.colorPrimary,
            width: deviceWidth * .33, 
            child: Image.network(
              'assets/images/shadow.jpg',
              fit: BoxFit.cover,
              width: deviceWidth * .33,
              height: deviceHeight - 55
            )
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 60),
            child: Column(children: <Widget>[
              Text('Slide 2', style: ryHeadlineLargeText),
            ])
          )),
        ]);
  }
}