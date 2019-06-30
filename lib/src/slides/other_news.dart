import 'package:flutter_web/material.dart';

import '../utils/styles.dart';
import '../utils/custom_colors.dart';
import '../widgets/slide-image.dart';

class OtherNews extends StatelessWidget {
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
      SlideImage(imagePath: 'assets/images/pillars_vert.jpg'),
      Expanded(
        child: ListView(
          padding: getSlidePadding(deviceWidth: _deviceWidth),
          children: <Widget>[
            Text('Other Flutter/Dart News', style: getHeadlineTextStyle(deviceWidth: _deviceWidth)),
            SizedBox(height: 20,),
            Text('• Provider Wins!', style: _bulletStyle),
              //Google backs Provider package for State Mgt (inherited + stateful widget) Matt & Filip "Pragmatic State Management in Flutter"
              //very similar to scoped model, lift state up and "provide" it  to child widgets,
              //disposal - clean up after yourself - provider can do this for you
              //multiprovider - provide multiple sources at the same time
              //provide anything, change notifiers, streams, static stuff
              //state for single widgets, stick with stateful widget
            Text('• New Widgets', style: _bulletStyle),
            Text('  - Reorderable List View', style: _bulletStyle), //supports user dragging items around, animations are built in
            Text('  - Range Slider', style: _bulletStyle), //two thumbs, coming soon
            Text('  - Expanding Search', style: _bulletStyle), //specify what to show when suggesting vs results
            Row(//semantics library, property for text and icons, or widget you can wrap around anything
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
            Text('• Dark Theme Support', style: _bulletStyle), //material theme option
            Row(
              children: <Widget>[
                Text('• New in Dart 2.3', style: _bulletStyle),
                IconButton(
                  icon: const Icon(Icons.launch),
                  color: CustomColors.colorGold,
                  tooltip: 'New in Dart 2.3 Examples',
                  onPressed: () {
                    _showModal(context, Dart2_3());
                  },
                ),
              ],
            ),
            Text('  - Spread Operator', style: _bulletStyle), 
            Text('  - If/else and For Loop in Collection Types', style: _bulletStyle), //(list, map, set), code is more declaritive
            //working on non-nullable types, migration tools coming too
          ]
        )),
    ]);
  }
}

class Semantics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _headerStyle = TextStyle(fontSize: 22.0, color: CustomColors.colorPrimary, height: 1.4, fontWeight: FontWeight.w600);

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('Semantics Example', style: _headerStyle),
          Image.network(
            'assets/images/semantics.png',
          ),
        ],
      )
    );
  }
}

class Dart2_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final TextStyle _headerStyle = TextStyle(fontSize: 22.0, color: CustomColors.colorPrimary, height: 1.4, fontWeight: FontWeight.w600);

    return Container(
      width: _deviceWidth * .5,
      child: Column(
        children: <Widget>[
          Text('New in Dart 2.3', style: _headerStyle),
          Image.network(
            'assets/images/spread_and_for_loop.png',
          ),
        ],
      )
    );
  }
}