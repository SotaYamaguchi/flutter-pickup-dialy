import 'package:flutter/material.dart';

import 'index.dart';

class DebugPageList extends StatelessWidget {
  const DebugPageList();

  static const routeName = '/dev-page-list';

  @override
  Widget build(BuildContext context) {
    final hp = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(hp * 0.057),
        child: AppBar(
          title: Text(
            'ページ一覧',
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  letterSpacing: 3,
                ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Align(
          alignment: Alignment.center,
          child: ListView(
            children: <Widget>[
              Container(),
              const _PreviewPageItem(
                title: 'MyApp',
                description: '最初のpage',
                route: MyApp.routeName,
              ),
              const _PreviewPageItem(
                title: 'dicePage',
                description: '最初のpage',
                route: DicePage.routeName,
              ),
              const _PreviewPageItem(
                title: 'HomePage',
                description: '最初のpage',
                route: HomePage.routeName,
              ),
              const _PreviewPageItem(
                title: 'InstructionPage',
                description: '最初のpage',
                route: InstructionPage.routeName,
              ),
              const _PreviewPageItem(
                title: 'NoticePage',
                description: '最初のpage',
                route: NoticePage.routeName,
              ),
              const _PreviewPageItem(
                title: 'StartPage',
                description: '最初のpage',
                route: StartPage.routeName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PreviewPageItem extends StatelessWidget {
  const _PreviewPageItem({
    this.title = '',
    this.description = '',
    this.route,
    this.arguments,
  });

  final String title;
  final String description;
  final String route;
  final Object arguments;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text((route == null ? '[未実装] ' : '') + description),
        onTap: () => Navigator.of(context).pushNamed(
          route,
          arguments: arguments,
        ),
      ),
    );
  }
}
