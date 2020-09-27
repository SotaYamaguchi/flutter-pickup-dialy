import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'router.dart';
import 'state/index.dart';
import 'utils/index.dart';

Future run() async {
  WidgetsFlutterBinding.ensureInitialized();

  // preferences
  final prefs = await SharedPreferences.getInstance();

  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => prefs),
        Provider(create: (context) => ApplicationNavigator()),
        Provider(create: (context) => Router()),
        StateNotifierProvider<DiceStateController, DiceState>(
          create: (_) => DiceStateController(),
        ),
      ],

      //ここでmain.dartの様なfileを読み込み
      child: const App(),
    ),
  );
}
