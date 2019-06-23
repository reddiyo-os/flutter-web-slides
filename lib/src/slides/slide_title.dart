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
                  Text('Flutter for Web', style: TextStyle(color: Colors.white)),
                  Text('and other highlights from Google I/O', style: TextStyle(color: Colors.white)),
                  FlatButton(
                    color: Colors.white,
                    child: Text('START'),
                    onPressed: () {Navigator.pushNamed(context, '/slides');},
                  ),
              ],),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text('Reddiyo', style: TextStyle(color: Colors.white),)
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