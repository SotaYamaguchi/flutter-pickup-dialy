import 'package:flutter/material.dart';

import 'pages/index.dart';

typedef WidgetPageBuilder = Widget Function(
  BuildContext context,
  RouteSettings settings,
);

class Router {
  static const root = '/';

  final _routes = <String, WidgetPageBuilder>{
    MyApp.routeName: (context, settings) => MyApp(),
    DicePage.routeName: (context, settings) => DicePage(),
    HomePage.routeName: (context, settings) => HomePage(),
    InstructionPage.routeName: (context, settings) => InstructionPage(),
    NoticePage.routeName: (context, settings) => NoticePage(),
    StartPage.routeName: (context, settings) => StartPage(),
    DebugPageList.routeName: (context, settings) => const DebugPageList(),
  };

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final pageBuilder = _routes[settings.name];
    if (pageBuilder != null) {
      return MaterialPageRoute<void>(
        builder: (context) => pageBuilder(context, settings),
        settings: settings,
      );
    }

    assert(false, 'unexpected settings: $settings');
    return null;
  }
}
