import 'package:flutter_web/material.dart';

import '../utils/custom_colors.dart';
import '../slides/slide_1.dart';
import '../slides/slide_2.dart';

class Slides extends StatefulWidget {
  @override
  _SlidesState createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {
    List<Widget> _slides = [Slide1(), Slide2()];
    int _slideNumber = 0;

    @override 
    Widget build(BuildContext context) {
      final double deviceWidth = MediaQuery.of(context).size.width;
      return Scaffold(
        body: Builder(builder: (BuildContext context) {
          return _slides[_slideNumber];
        }),
        bottomNavigationBar: Container(
          height: 55,
          child: Row(
            children: <Widget>[
              Container(
                height: 55,
                color: CustomColors.colorPrimary,
                child: Image.network(
                  'assets/images/reddiyo-logo-reversed.png',
                ),
                padding: const EdgeInsets.only(bottom: 15, top: 15),
                width: deviceWidth * .33
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Builder(builder: (BuildContext context) {
                      if (_slideNumber > 0) {
                        return Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Ink(
                            decoration: ShapeDecoration(
                              color: CustomColors.colorGoldWashLight,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.keyboard_arrow_left),
                              color: CustomColors.colorGold,
                              hoverColor: Colors.white,
                              onPressed: () {
                                setState(() {
                                  _slideNumber = _slideNumber - 1;
                                });
                              },
                            )
                          )
                        );
                      }
                      else {
                        return SizedBox.shrink();
                      }
                    },),
                    Builder(builder: (BuildContext context) {
                      if (_slideNumber < _slides.length - 1) {
                        return Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Ink(
                            decoration: ShapeDecoration(
                              color: CustomColors.colorGoldWashLight,
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.keyboard_arrow_right),
                              color: CustomColors.colorGold,
                              hoverColor: Colors.white,
                              onPressed: () {
                                setState((){ _slideNumber = _slideNumber + 1; });
                              },
                            )
                          )
                        );
                      }
                      else {
                        return SizedBox.shrink();
                      }
                    },)
              ],))
            ],
          ),
        ),
      );
    }
}