import 'package:flutter_web/material.dart';

import '../slides/title_slide.dart';
import '../slides/reddiyo.dart';
import '../slides/slides.dart';
import '../slides/google_io_review.dart';
import '../slides/resources.dart';

class CustomRoutes {
  Route getCustomRoutes(RouteSettings settings) {
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (context) { return TitleSlide(); });
      case '/reddiyo':
        return MaterialPageRoute(builder: (context) { return Reddiyo(); });
      case '/slides':
        return MaterialPageRoute( builder: (context) { return Slides(); } );
      case '/google-io-review':
        return MaterialPageRoute( builder: (context) { return GoogleIoReview(); } );
      case '/resources':
        return MaterialPageRoute( builder: (context) { return Resources(); } );
      default:
        return MaterialPageRoute( builder: (context) { return TitleSlide();}
        );
    }
  }
}