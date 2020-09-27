import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:spajam_2020/router.dart';
import 'package:spajam_2020/utils/index.dart';

import 'pages/index.dart';
import 'theme.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    const ja = const Locale('ja', 'JP');

    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        const FallbackCupertinoLocalisationsDelegate()
      ],
      // ignore: prefer_const_literals_to_create_immutables
      supportedLocales: [ja],
      theme: buildTheme(),
      title: '',
      navigatorKey: context.watch<ApplicationNavigator>().key,
      home: AppSplash(afterSplashScreen: MyApp()),
      onGenerateRoute: context.watch<Router>().onGenerateRoute,
      builder: (context, child) {
        final mediaQuery = MediaQuery.of(context);
        return TextScaleFactor(
          min: min(mediaQuery.size.width, mediaQuery.size.height) /
              mediaQuery.size.width,
          max: 2,
          child: child,
        );
      },
    );
  }
}

class FallbackCupertinoLocalisationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      DefaultCupertinoLocalizations.load(locale);

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}
