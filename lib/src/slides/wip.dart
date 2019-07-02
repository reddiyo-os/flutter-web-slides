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
            Text('• Still Need to Optimize', style: _bulletStyle),
            Text('• No Plugin System Yet', style: _bulletStyle),
            Text('• Deeplinking and Back Button are Glitchy', style: _bulletStyle),
            Text('• Material Icons and Image Issues', style: _bulletStyle),
            Text('• No Stateful Hot Reload', style: _bulletStyle),
            Text('• Performance', style: _bulletStyle),
          ]
        )),
    ]);
  }
}