import 'package:flutter_web/material.dart';

import '../utils/styles.dart';
import '../utils/custom_colors.dart';
import '../widgets/slide-image.dart';

class OtherNews extends StatelessWidget {
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
      SlideImage(imagePath: 'assets/images/pillars_vert.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('Other Flutter/Dart News', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            Text('• Provider Wins!', style: _bulletStyle),
            Text('• New Widgets', style: _bulletStyle),
            Text('   - Reorderable List View', style: _smallBulletStyle), 
            Text('   - Range Slider', style: _smallBulletStyle),
            Text('   - Expanding Search', style: _smallBulletStyle),
            Row(
              children: <Widget>[
                Text('• Accessibility Semantics Label', style: _bulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  tooltip: 'Semantics Examples',
                  onPressed: () {
                    _showModal(context, Semantics());
                  },
                ),
              ],
            ),
            Text('• Dark Theme Support', style: _bulletStyle),
            Text('• New in Dart 2.3', style: _bulletStyle),
            Row(
              children: <Widget>[
                Text('   - Spread Operator', style: _smallBulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  tooltip: 'Spread Operator Example',
                  onPressed: () {
                    _showModal(context, SpreadOperator());
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('   - Collection if and for', style: _smallBulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  tooltip: 'Collection if and for Example',
                  onPressed: () {
                    _showModal(context, CollectionBeforeAfter());
                  },
                ),
              ],
            ),
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