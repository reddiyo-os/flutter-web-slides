import 'package:flutter_web/material.dart';

import '../utils/styles.dart';
import '../utils/custom_colors.dart';
import '../widgets/slide-image.dart';

class Predictions extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _bulletStyle = getBulletTextStyle(deviceWidth: _deviceWidth);
    final TextStyle _smallBulletStyle = getSmallBulletTextStyle(deviceWidth: _deviceWidth);

    void _showModal(BuildContext context, Widget child) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: <Widget>[
              child
            ],
          );
        }
      );
    }
    
    return Row(children: <Widget>[
      SlideImage(imagePath: 'assets/images/crystal-ball.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('Flutter Predictions', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            Text('• Flutter for iOS/Android will gain momentum', style: _bulletStyle),
            Text('   - Community is super strong', style: _smallBulletStyle),
            Text('• Flutter for Web', style: _bulletStyle),
            Text('   - Mobile devs will love it', style: _smallBulletStyle), 
            Text('   - Web devs will be slow to adopt', style: _smallBulletStyle),
          ]
        )),
    ]);
  }
}

class Semantics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('Semantics Example', style: modalHeaderStyle),
          Divider(color: customPrimary,),
          Image.network(
            'assets/images/semantics.png',
          ),
          Text('https://youtu.be/YSULAJf6R6M', style: modalSourceStyle)
        ],
      )
    );
  }
}

class SpreadOperator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('Spread Operator Example', style: modalHeaderStyle),
          Divider(color: customPrimary,),
          Image.network(
            'assets/images/spread_operator.png',
          ),
          Text('https://youtu.be/J5DQRPRBiFI', style: modalSourceStyle)
        ],
      )
    );
  }
}

class CollectionBeforeAfter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      width: _deviceWidth * .65,
      child: Column(
        children: <Widget>[
          Text('Collection Construction Before/After', style: modalHeaderStyle),
          Image.network(
            'assets/images/spread_and_for_loop.jpg',
          ),
          Text('https://youtu.be/J5DQRPRBiFI', style: modalSourceStyle)
        ],
      )
    );
  }
}