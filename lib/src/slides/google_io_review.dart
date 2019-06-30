import 'package:flutter_web/material.dart';

import '../utils/custom_colors.dart';

class GoogleIoReview extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final double _deviceHeight = MediaQuery.of(context).size.height;
    final double _iconSize = 40;
    
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          height: _deviceHeight,
          width: _deviceWidth, 
          child: Image.network(
            'assets/images/collage.jpg',
            fit: BoxFit.cover,
            width: _deviceWidth,
            height: _deviceHeight
          )
        ),
        Positioned(
          bottom: 0,
          child: Container(
            color: Color(0xB3384250),
            height: 70,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            width: _deviceWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RawMaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/slides');
                  },
                  child: Icon(Icons.keyboard_arrow_left, color: CustomColors.colorBlueLight, size: _iconSize),
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
                    Navigator.pushNamed(context, '/resources');
                  },
                  child: Icon(Icons.keyboard_arrow_right, color: CustomColors.colorBlueLight, size: _iconSize),
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
          ),
        )
      ],
    );
  }
}