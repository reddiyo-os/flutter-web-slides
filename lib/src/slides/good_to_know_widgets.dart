import 'package:flutter_web/material.dart';

import '../utils/styles.dart';
import '../utils/custom_colors.dart';
import '../widgets/slide-image.dart';

class GoodToKnowWidgets extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _bulletStyle = getBulletTextStyle(deviceWidth: _deviceWidth);

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
      SlideImage(imagePath: 'assets/images/window.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('Good To Know Widgets', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Text('• RawKeyBoardListener', style: _bulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  tooltip: 'RawKeyBoardListener Example',
                  onPressed: () {
                    _showModal(context, Keyboard());
                  },
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text('• Listener', style: _bulletStyle), //for pointer events
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  tooltip: 'Listener Example',
                  onPressed: () {
                    _showModal(context, Listener());
                  },
                ),
              ],
            ),
          ]
        )),
    ]);
  }
}

class Keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _headerStyle = TextStyle(fontSize: 22.0, color: CustomColors.colorPrimary, height: 1.4, fontWeight: FontWeight.w600);

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('RawKeyBoardListener Example', style: _headerStyle),
          Image.network(
            'assets/images/RawKeyBoardListener.png',
          ),
        ],
      )
    );
  }
}

class Listener extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _headerStyle = TextStyle(fontSize: 22.0, color: CustomColors.colorPrimary, height: 1.4, fontWeight: FontWeight.w600);

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('Listener Example', style: _headerStyle),
          Image.network(
            'assets/images/mouseevents.png',
          ),
        ],
      )
    );
  }
}