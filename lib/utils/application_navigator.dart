import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spajam_2020/widgets/app_text.dart';
import 'package:spajam_2020/widgets/index.dart';

class ApplicationNavigator {
  ApplicationNavigator();

  GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  NavigatorState get navigator => key.currentState;
  BuildContext get descendantContext => navigator.overlay.context;

  void popToRouteName(String name) {
    navigator.popUntil(ModalRoute.withName(name));
  }

  void popToRoot() {
    navigator.popUntil((r) => r.isFirst);
  }

  void popToFirstFullscreenDialog() {
    navigator.popUntil((r) => (r is PageRoute) && r.fullscreenDialog);
  }

  void showErrorDialog(dynamic error) {
    showDialog<dynamic>(
      context: descendantContext,
      builder: (context) => AlertDialog(
        title: AppText(
          'エラーが発生しました',
          style: TextStyle(
            color: Theme.of(context).errorColor,
          ),
        ),
        content: AppText(error.toString()),
        actions: [
          FlatButton(
            child: AppText(MaterialLocalizations.of(context).okButtonLabel),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }

  Future<void> showOkDialog({
    @required String title,
    @required String message,
    String okLabel,
  }) {
    return showConfirmDialog<void>(
      title: title,
      message: message,
      actions: [
        DialogAction<dynamic>(
          label: okLabel ??
              MaterialLocalizations.of(descendantContext).okButtonLabel,
        )
      ],
    );
  }

  Future<T> showConfirmDialog<T>({
    @required String title,
    @required String message,
    @required List<DialogAction<T>> actions,
    double titlePaddingBottom = 0,
  }) {
    return showDialog<T>(
      context: descendantContext,
      builder: (context) => SimpleDialog(
        title: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: titlePaddingBottom),
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
        children: actions
            .map(
              (a) => FlatButton(
                child: AppText(a.label),
                onPressed: () {
                  Navigator.of(context).pop<T>(a.key);
                },
              ),
            )
            .toList(),
      ),
    );
  }

  Future<T> showMenuDialog<T>({
    @required String title,
    @required String message,
    String recommendations,
    String options,
    String userAvatarUrl = '',
    double edgePadding = 0,
    double textPadding = 0,
    double iconRadius,
    @required List<DialogAction<T>> actions,
  }) {
    return showDialog<T>(
      context: descendantContext,
      builder: (context) => Dialog(
        child: Container(
          padding: EdgeInsets.all(edgePadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: textPadding),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: textPadding),
                child: Text(
                  message,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: textPadding),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(userAvatarUrl),
                      radius: iconRadius,
                    ),
                    recommendations == null
                        ? Container()
                        : Padding(
                            padding: EdgeInsets.only(left: textPadding),
                            child: Text(
                              recommendations,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.red),
                            ),
                          ),
                  ],
                ),
              ),
              options == null
                  ? Container()
                  : Padding(
                      padding: EdgeInsets.only(bottom: textPadding),
                      child: Text(
                        options,
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.center,
                      ),
                    ),
              OnpressButton(
                title: 'OK',
                height: 0.048,
                width: 0.27,
                color: 'blue',
                shape: 'round10',
                onPressHandler: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<T> showConfirmSheet<T>({
    String title = '',
    @required List<SheetAction<T>> actions,
  }) {
    return showModalBottomSheet(
      context: descendantContext,
      builder: (context) {
        return SafeArea(
          bottom: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                  ListTile(
                    title: Text(
                      title,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const Divider()
                ] +
                actions
                    .map<StatelessWidget>(
                      (e) => ListTile(
                        leading: Icon(e.icon),
                        title: Text(
                          e.label,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        onTap: () => Navigator.of(context).pop(e.key),
                      ),
                    )
                    .toList(),
          ),
        );
      },
    );
  }
}

@immutable
class DialogAction<T> {
  const DialogAction({
    @required this.label,
    this.key,
  });

  final T key;
  final String label;
}

@immutable
class SheetAction<T> {
  const SheetAction({
    @required this.label,
    @required this.icon,
    this.key,
  });

  final String label;
  final IconData icon;
  final T key;
}
