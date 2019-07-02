import 'package:flutter_web/material.dart';

import 'dart:html';

import '../utils/styles.dart';
import '../widgets/slide-image.dart';
import '../widgets/footer_logo.dart';

class Resources extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _bulletStyle = getBulletTextStyle(deviceWidth: _deviceWidth);
    final TextStyle _smallBulletStyle = getExtraSmallBulletTextStyle(deviceWidth: _deviceWidth);
    
    return Scaffold(
      body: Row(children: <Widget>[
        SlideImage(imagePath: 'assets/images/reflection.jpg'),
        Expanded(
          child: ListView(
            padding: getSlidePadding(deviceWidth: _deviceWidth),
            children: <Widget>[
              Text('Resources', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
              SizedBox(height: 20,),
              Listener(
                onPointerDown: (_) {
                  window.open('https://flutter.dev/web', 'tab');
                },
                child: Text('• Flutter.dev/web', style: _bulletStyle)
              ),
              Text('• I/O Flutter Playlist', style: _bulletStyle),
              Listener(
                onPointerDown: (_) {
                  window.open('https://goo.gle/2ZTbnOs', 'tab');
                },
                child: Text('    - https://goo.gle/2ZTbnOs', style: _smallBulletStyle)),
              Text('• Developer Quest Sample App', style: _bulletStyle),
              Listener(
                onPointerDown: (_) {
                  window.open('https://github.com/2d-inc/developer_quest', 'tab');
                },
                child: Text('    - github.com/2d-inc/developer_quest', style: _smallBulletStyle)
              ),
              Listener(
                onPointerDown: (_) {
                  window.open('https://flutterx.com', 'tab');
                },
                child: Text('• FlutterX.com', style: _bulletStyle)
              ),
              Text('• Provider Package', style: _bulletStyle),
              Listener(
                onPointerDown: (_) {
                  window.open('https://pub.dev/packages/provider', 'tab');
                },
                child: Text('    - https://pub.dev/packages/provider', style: _smallBulletStyle)
              ),
              Text('• Explanation of Provider\'s Approach', style: _bulletStyle),
              Listener(
                onPointerDown: (_) {
                  window.open('https://www.youtube.com/watch?v=2N75m6Pq9eY&t=762s', 'tab');
                },
                child: Text('    - https://www.youtube.com/watch?v=2N75m6Pq9eY&t=762s', style: _smallBulletStyle)
              ),
              Text('• Source Code for this Deck', style: _bulletStyle),
              Listener(
                onPointerDown: (_) {
                  window.open('https://github.com/reddiyo-os/flutter-web-slides', 'tab');
                },
                child: Text('    - github.com/reddiyo-os/flutter-web-slides', style: _smallBulletStyle)
              )
            ]
          )),
      ]),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FooterLogo()
        ],
      ),
    );
  }
}