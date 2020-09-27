import 'package:flutter/material.dart';
import 'package:spajam_2020/pages/splash.dart';

class AppSplash extends StatelessWidget {
  const AppSplash({@required this.afterSplashScreen});

  final Widget afterSplashScreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      // Note: Future待機もできる
      child: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: afterSplashScreen,
        splashContent: const _SplashContent(),
        backgroundColor: Colors.white,
        loaderColor: Colors.red,
      ),
    );
  }
}

class _SplashContent extends StatelessWidget {
  const _SplashContent();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(),
      ],
    );
  }
}
