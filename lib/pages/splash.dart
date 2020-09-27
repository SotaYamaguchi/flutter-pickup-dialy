library splashscreen;

import 'dart:async';
import 'dart:core';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    this.loaderColor,
    @required this.seconds,
    this.photoSize,
    this.onClick,
    this.navigateAfterSeconds,
    this.title = const Text(''),
    this.backgroundColor = Colors.white,
    this.styleTextUnderTheLoader = const TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    this.splashContent,
    this.loadingText = const Text(''),
    this.imageBackground,
    this.gradientBackground,
  });

  final int seconds;
  final Text title;
  final Color backgroundColor;
  final TextStyle styleTextUnderTheLoader;
  final dynamic navigateAfterSeconds;
  final double photoSize;
  final dynamic onClick;
  final Color loaderColor;
  final Widget splashContent;
  final Text loadingText;
  final ImageProvider imageBackground;
  final Gradient gradientBackground;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: widget.seconds), () {
      if (widget.navigateAfterSeconds is String) {
        // It's fairly safe to assume this is using the in-built material
        // named route component
        Navigator.of(context).pushReplacementNamed(widget.navigateAfterSeconds);
      } else if (widget.navigateAfterSeconds is Widget) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => widget.navigateAfterSeconds));
      } else {
        throw ArgumentError(
            'widget.navigateAfterSeconds must either be a String or Widget');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: widget.onClick,
        child: widget.splashContent,
      ),
    );
  }
}
