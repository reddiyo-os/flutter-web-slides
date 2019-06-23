import 'package:flutter_web/material.dart';
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
        // appBar: AppBar(
        //   title: Text('Title Slide'),
        // ),
        body: Builder(builder: (BuildContext context) {
          return _slides[_slideNumber];
        }),
        bottomNavigationBar: Container(
          height: 55,
          child: Row(
            children: <Widget>[
              Container(
                height: 55,
                color: Colors.red,
                child: Text('Reddiyo'),
                width: deviceWidth * .33
              ),
              //SizedBox.expand(),
              Builder(builder: (BuildContext context) {
                if (_slideNumber > 0) {
                  return FlatButton(
                    child: Text('Go Back'),
                    onPressed: () {
                      setState((){ _slideNumber = _slideNumber - 1; });
                    },
                  );
                }
                else {
                  return SizedBox.shrink();
                }
              },),
              Builder(builder: (BuildContext context) {
                if (_slideNumber < _slides.length - 1) {
                  return FlatButton(
                    child: Text('Go Next'),
                    onPressed: () {
                      setState((){ _slideNumber = _slideNumber + 1; });
                    },
                  );
                }
                else {
                  return SizedBox.shrink();
                }
              },)
            ],
          ),
        ),
      );
    }
}