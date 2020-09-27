import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    Key key,
    this.fit = BoxFit.fitHeight,
    this.style,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  final String text;
  final BoxFit fit;
  final TextStyle style;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) => FittedBox(
        fit: fit,
        child: Text(
          text,
          style: style,
          textAlign: textAlign,
        ),
      );
}
