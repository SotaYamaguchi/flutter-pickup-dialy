import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  Header({
    this.title = '',
    this.titleObject,
    this.leadingIcon,
    this.leftIcon,
    this.leadingText = '',
    this.leadingFn,
    this.actionIconName,
    this.actionFn,
    this.elevation = 2,
  });

  final String title;
  final Widget titleObject;
  final Object leadingIcon;
  final String leftIcon;
  final String leadingText;
  final Function() leadingFn;
  final String actionIconName;
  final Function() actionFn;
  final double elevation;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final hp = MediaQuery.of(context).size.height;
    final wp = MediaQuery.of(context).size.width;

    final icons = <String, Object>{
      'close': Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(wp * 0.03),
        child: RawMaterialButton(
          onPressed: leadingFn,
          child: Icon(
            Icons.close,
            color: const Color(0xffADADAD),
            size: wp * 0.035,
          ),
          shape: CircleBorder(
            side: BorderSide(
              width: wp * 0.0000005,
              color: Colors.white,
            ),
          ),
          elevation: 2,
          fillColor: Colors.white,
        ),
      ),
      'account': Icons.person,
      'accountSvg': Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons/account.svg',
              semanticsLabel: 'account',
              height: wp * 0.075,
              width: wp * 0.075,
            ),
            Container(
              padding: EdgeInsets.only(top: hp * 0.002),
              child: Text(
                'アカウント',
                style: TextStyle(
                  fontSize: wp * 0.015,
                ),
              ),
            ),
          ],
        ),
      ),
      'arrow': Icons.arrow_back_ios,
      'notify': Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.notifications_none,
              size: wp * 0.075,
            ),
            Container(
              padding: EdgeInsets.only(top: hp * 0.002),
              child: Text(
                'お知らせ',
                style: TextStyle(
                  fontSize: wp * 0.015,
                ),
              ),
            ),
          ],
        ),
      ),
    };

    if (leadingText == '') {
      //AppBarの左側にIconを表示させる時
      return AppBar(
        elevation: elevation,
        centerTitle: true, //iOSデフォルト仕様をオーバーライド
        leading: leftIcon == 'close'
            ? icons[leftIcon]
            : IconButton(
                padding: const EdgeInsets.all(0),
                icon: leftIcon == 'accountSvg'
                    ? (icons[leftIcon])
                    : Icon(
                        icons[leftIcon],
                        color: const Color(0xffADADAD),
                        size: wp * 0.035,
                      ),
                onPressed: leadingFn,
              ),
        actions: <Widget>[
          actionIconName == null
              ? Container()
              : IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: icons[actionIconName],
                  onPressed: actionFn,
                ),
        ],
        title: title == ''
            ? titleObject
            : Text(
                title,
                style: TextStyle(
                  fontSize: wp * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
      );
    } else {
      //AppBarの左側に文字を表示させる時
      return AppBar(
        elevation: elevation,
        centerTitle: true, //iOSデフォルト仕様をオーバーライド
        leading: Container(
          alignment: FractionalOffset.centerLeft,
          child: OverflowBox(
            maxWidth: 80,
            child: FlatButton(
              onPressed: leadingFn,
              child: Text(
                leadingText,
                style: TextStyle(
                  fontSize: wp * 0.035,
                  color: const Color(0xff446CCA),
                ),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          actionIconName == null
              ? Container()
              : IconButton(
                  icon: icons[actionIconName],
                  onPressed: actionFn,
                ),
        ],
        title: Text(
          title,
          style: TextStyle(
            fontSize: wp * 0.035,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
  }
}
