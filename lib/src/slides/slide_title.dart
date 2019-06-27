import 'package:flutter_web/material.dart';

class SlideTitle extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Title Slide'),
      // ),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            height: deviceHeight,
            width: deviceWidth, 
            child: Image.network(
              'assets/images/stairs.jpg',
              fit: BoxFit.cover,
              width: deviceWidth,
              height: deviceHeight
            )
          ),
          Positioned(
            top: deviceHeight * .2,
            width: deviceWidth,
            child: Center(
              child: Column(
                children: <Widget>[
                  Text('Flutter for Web', style: TextStyle(color: Colors.white, fontSize: 70, fontWeight: FontWeight.w200)),
                  Text('and other highlights from Google I/O', style: TextStyle(color: Colors.white, fontSize: 25)),
                  FlatButton(
                    color: Colors.white,
                    child: Text('START'),
                    onPressed: () {Navigator.pushNamed(context, '/slides');},
                  ),
                  
              ],),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Container(
                padding: const EdgeInsets.only(right: 10, top: 3),
                alignment: Alignment.topRight,
                width: deviceWidth * .3333,
                child: Image.network(
                  'assets/images/reddiyo-logo-reversed.png',
                  // fit: BoxFit.cover,
                  // width: deviceWidth,
                  width: 140
                )
              ),
              Container(
                alignment: Alignment.center,
                width: deviceWidth * .3333,
                child: Text('RONA KILMER', style: TextStyle(color: Colors.white, fontSize: 26, height: 1)) 
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                width: deviceWidth * .3333,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text('Co-Founder', style: TextStyle(color: Colors.white)),
                  Text('Twitter: @rkunboxed', style: TextStyle(color: Colors.white))
                ],) 
              ),
            ],),
          )
          
        ],
      )
    );
  }
}

// class Slide1 extends StatelessWidget {
//   @override 
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Title Slide'),
//       ),
//       body: Text('SLIDE 1')
//     );
//   }
// }