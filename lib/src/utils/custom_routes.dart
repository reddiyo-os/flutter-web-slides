import 'package:flutter_web/material.dart';

import '../slides/slide_title.dart';
import '../slides/slides.dart';

class CustomRoutes {
  Route getCustomRoutes(RouteSettings settings) {
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (context) { return SlideTitle(); });
      case '/slides':
        return MaterialPageRoute( builder: (context) { return Slides(); } );
      default:
        return MaterialPageRoute( builder: (context) { return SlideTitle();}
        );
    }
  }
}