import 'package:flutter/material.dart';

class OnpressButton extends StatelessWidget with PreferredSizeWidget {
  OnpressButton({
    this.title = '',
    this.titleStyleSize = 0.035,
    this.color,
    this.width = 0.5,
    this.height = 0.06,
    this.onPressHandler,
    this.shape,
  });

  final String title;
  final Object titleStyleSize;
  final String color;
  final Object width;
  final Object height;
  final Object onPressHandler;
  final Object shape;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final hp = MediaQuery.of(context).size.height;
    final wp = MediaQuery.of(context).size.width;

    final colors = <String, Object>{
      'blue': const Color(0xff446CCA),
      'lightBlue': const Color(0xff446CCA),
      'grey': const Color(0xffADADAD),
    };

    final shapes = <String, Object>{
      'round': const StadiumBorder(),
      'round10': RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    };

    return Align(
      alignment: Alignment.center,
      child: Container(
        width: wp * width,
        height: hp * height,
        child: RaisedButton(
          padding: EdgeInsets.all(wp * 0.001),
          child: Text(
            // titleを追加している
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: wp * titleStyleSize,
            ),
          ),
          // colorを追加している
          color: colors[color],
          shape: shapes[shape],
          onPressed: onPressHandler,
        ),
      ),
    );
  }
}
