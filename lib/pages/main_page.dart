import 'package:flutter/material.dart';

import 'page_list.dart';

class MyApp extends StatelessWidget {
  static const routeName = '/main';

  @override
  Widget build(BuildContext context) {
    // Get screen width & height
    // final wp = MediaQuery.of(context).size.width;
    // final hp = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(DebugPageList.routeName);
          print('tap');
        },
        tooltip: 'Increment',
        child: const Text('[Debug]ページ一覧へ'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
