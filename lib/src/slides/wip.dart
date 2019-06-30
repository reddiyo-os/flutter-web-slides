import 'package:flutter_web/material.dart';

import '../utils/styles.dart';
import '../widgets/slide-image.dart';

class WorkInProgress extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _bulletStyle = getBulletTextStyle(deviceWidth: _deviceWidth);
    
    return Row(children: <Widget>[
      SlideImage(imagePath: 'assets/images/lamp.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('Work in Progress', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            Text('• Still Need to Optimize', style: _bulletStyle), //keyboard listener, hovers (listener widget), etc, webdevs might get frustrated
                  // browser UI differences
            Text('• Deeplinking is Glitchy', style: _bulletStyle), //sometimes it works? Doesn't retain URL in the nav bar
            Text('• Back Button Hijinx', style: _bulletStyle),
            Text('• No Stateful Hot Reload', style: _bulletStyle), //only hot restart, actively working on stateful hot reload
            Text('• Performance', style: _bulletStyle), //JS file is 1 MB!
          ]
        )),
    ]);
  }
}