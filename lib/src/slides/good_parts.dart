import 'package:flutter_web/material.dart';

import '../utils/styles.dart';
import '../utils/custom_colors.dart';
import '../widgets/slide-image.dart';

class GoodParts extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _bulletStyle = getBulletTextStyle(deviceWidth: _deviceWidth);

    return Row(children: <Widget>[
      SlideImage(imagePath: 'assets/images/window.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('The Good Parts', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            Text('• Widgets Just Work', style: _bulletStyle),
            Text('• Responsive Web', style: _bulletStyle), //Media query support already there
            Text('• Dart2JS Compiler', style: _bulletStyle), //quite mature
            Text('• Dart DevTools', style: _bulletStyle), //widget inspector
          ]
        )),
    ]);
  }
}

// Good to Know
// need to optimize for user input depending on the device (already do this for responsive web)
// RawKeyboardListener
// Pointer listener

