import 'package:flutter_web/material.dart';

import 'src/utils/custom_routes.dart';
import 'src/utils/custom_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: customPrimary,
          accentColor: customAccent,
          primaryColor: CustomColors.colorDark,
          primaryColorDark: CustomColors.colorDarkest,
          fontFamily: 'Montserrat',
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: CustomColors.colorDarkest,
            displayColor: CustomColors.colorDarkest,
            fontSizeFactor: 1.2,
          )
        ),
      onGenerateRoute: CustomRoutes().getCustomRoutes,
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) {
            return Text('Not Found');
          }
        );
      },
    );
  }
}