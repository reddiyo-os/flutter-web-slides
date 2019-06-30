import 'package:flutter_web/material.dart';

import '../utils/styles.dart';
import '../utils/custom_colors.dart';
import '../widgets/slide-image.dart';

class Resources extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _bulletStyle = getBulletTextStyle(deviceWidth: _deviceWidth);
    
    return Scaffold(
      body: Row(children: <Widget>[
        SlideImage(imagePath: 'assets/images/reflection.jpg'),
        Expanded(
          child: ListView(
            padding: getSlidePadding(deviceWidth: _deviceWidth),
            children: <Widget>[
              Text('Resources', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
              SizedBox(height: 20,),
              Text('• Flutter.dev/web', style: _bulletStyle),
              Text('• FlutterX', style: _bulletStyle), //talk links
              Text('• I/O Flutter Playlist', style: _bulletStyle),
              Text('  https://goo.gle/2ZTbnOs', style: _bulletStyle),
              Text('• Developer Quest Sample App', style: _bulletStyle),
              Text('  github.com/2d-inc/developer_quest', style: _bulletStyle),
            ]
          )),
      ]),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 55,
            width: _deviceWidth * .33,
            color: CustomColors.colorPrimary,
            child: Image.network(
              'assets/images/reddiyo-logo-reversed.png',
            ),
            padding: const EdgeInsets.only(bottom: 15, top: 15),
          ),
        ],
      ),
    );
  }
}