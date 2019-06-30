import 'package:flutter_web/material.dart';

import '../utils/custom_colors.dart';

class Reddiyo extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    final double fontSizeHeadline = deviceWidth * .05;
    final double fontSizeSubHead = fontSizeHeadline * .5;
    final double fontSizeSocial = fontSizeHeadline * .3;
    final double iconSize = fontSizeHeadline * .6;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            height: deviceHeight,
            width: deviceWidth, 
            child: Image.network(
              'assets/images/bike.jpg',
              fit: BoxFit.cover,
              width: deviceWidth,
              height: deviceHeight
            )
          ),
          Positioned(
            top: deviceHeight * .25,
            width: deviceWidth,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.network(
                      'assets/images/reddiyo-logo-reversed.png',
                      width: 240
                    )
                  ),
                  SizedBox(height: 30,),
                  Text('Rona Kilmer', style: TextStyle(color: CustomColors.colorBlueLight, fontSize: fontSizeHeadline, fontWeight: FontWeight.w200)), 
                  Text('CPO and Co-Founder', style: TextStyle(color: Colors.white, fontSize: fontSizeSubHead)),
                  SizedBox(height: 40,),
                  Text('Twitter: @rkunboxed, @reddiyo', style: TextStyle(color: Colors.white, fontSize: fontSizeSocial)),
                  Text('Facebook: @reddiyo', style: TextStyle(color: Colors.white, fontSize: fontSizeSocial)),
                  Text('Instagram: @goreddiyo', style: TextStyle(color: Colors.white, fontSize: fontSizeSocial)),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RawMaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Icon(Icons.keyboard_arrow_left, color: CustomColors.colorBlueLight, size: iconSize),
                        shape: CircleBorder(),
                        elevation: 0.0,
                        highlightElevation: 0.0,
                        fillColor: CustomColors.colorWashMedium,
                        splashColor: CustomColors.colorWashMedium,
                        highlightColor: CustomColors.colorWashMedium,
                        padding: EdgeInsets.all(8.0),
                        constraints: BoxConstraints(minWidth: 72.0),
                      ),
                      SizedBox(width: 10,),
                      RawMaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/slides');
                        },
                        child: Icon(Icons.keyboard_arrow_right, color: CustomColors.colorBlueLight, size: iconSize),
                        shape: CircleBorder(),
                        elevation: 0.0,
                        highlightElevation: 0.0,
                        fillColor: CustomColors.colorWashMedium,
                        splashColor: CustomColors.colorWashMedium,
                        highlightColor: CustomColors.colorWashMedium,
                        padding: EdgeInsets.all(8.0),
                        constraints: BoxConstraints(minWidth: 72.0),
                      ),
                  ],)
              ],),
            ),
          ),
        ],
      )
    );
  }
}