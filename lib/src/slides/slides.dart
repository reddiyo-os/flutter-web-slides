import 'package:flutter_web/material.dart';

import '../utils/custom_colors.dart';
import '../slides/agenda.dart';
import '../slides/intro.dart';
import '../slides/good_parts.dart';
import '../slides/good_to_know_widgets.dart';
import '../slides/wip.dart';
import '../slides/other_news.dart';
import '../widgets/footer_logo.dart';

class Slides extends StatefulWidget {
  @override
  _SlidesState createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {

    List<Widget> _slides = [
      Agenda(),
      Intro(),
      GoodParts(),
      GoodToKnowWidgets(),
      WorkInProgress(),
      OtherNews()
    ];
    int _slideNumber = 0;

    @override 
    Widget build(BuildContext context) {
      final double _deviceWidth = MediaQuery.of(context).size.width;

      return Scaffold(
          body: Builder(builder: (BuildContext context) {
            return _slides[_slideNumber];
          }),
          bottomNavigationBar: Container(
            height: 55,
            child: Row(
              children: <Widget>[
                FooterLogo(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RawMaterialButton(
                          onPressed: () {
                            if (_slideNumber > 0) {
                              setState(() { _slideNumber = _slideNumber - 1; });
                            }
                            else {
                              Navigator.pop(context);
                            }
                          },
                          child: Icon(
                            Icons.keyboard_arrow_left,
                            color: CustomColors.colorBlue,
                            size: 30,
                            semanticLabel: 'Previous Slide',
                          ),
                          shape: CircleBorder(),
                          elevation: 0.0,
                          highlightElevation: 0.0,
                          focusElevation: 0.0,
                          hoverElevation: 0.0,
                          fillColor: CustomColors.colorWashLight,
                          splashColor: CustomColors.colorWashLight,
                          highlightColor: CustomColors.colorWashLight,
                          hoverColor: CustomColors.colorWashLight,
                          padding: EdgeInsets.all(8),
                          constraints: BoxConstraints(minWidth: 64.0),
                        ),
                        RawMaterialButton(
                          onPressed: () {
                            if (_slideNumber < _slides.length - 1) {
                              setState(() { _slideNumber = _slideNumber + 1; });
                            }
                            else {
                              Navigator.pushNamed(context, '/google-io-review');
                            }
                          },
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: CustomColors.colorBlue,
                            size: 30,
                            semanticLabel: 'Next Slide',
                          ),
                          shape: CircleBorder(),
                          elevation: 0.0,
                          highlightElevation: 0.0,
                          focusElevation: 0.0,
                          hoverElevation: 0.0,
                          fillColor: CustomColors.colorWashLight,
                          splashColor: CustomColors.colorWashLight,
                          highlightColor: CustomColors.colorWashLight,
                          hoverColor: CustomColors.colorWashLight,
                          padding: EdgeInsets.all(8),
                          constraints: BoxConstraints(minWidth: 64.0),
                        )
                      ]
                    )
                  ))
              ],
            ),
          ),
      );
    }
}