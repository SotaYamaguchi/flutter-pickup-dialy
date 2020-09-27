import 'dart:async';
import 'dart:math';

import 'package:state_notifier/state_notifier.dart';

import 'dice_state.dart';

export 'dice_state.dart';

class DiceStateController extends StateNotifier<DiceState> with LocatorMixin {
  DiceStateController() : super(const DiceState()) {}

  void rollDice(int currentDiceNum) {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      final showDiceNum = Random().nextInt(3) + 1;

      if (mounted) {
        state = state.copyWith(showDiceNum: showDiceNum);
      }
      Timer(const Duration(milliseconds: 1000), () {
        timer.cancel();
        state = state.copyWith(showCurrentDiceNum: true);
        state = state.copyWith(currentDiceNum: currentDiceNum);
      });
    });

    state = state.copyWith(showButton: false);
  }

  void changeShowNum() {
    state = state.copyWith(showCurrentDiceNum: false);
  }

  void closePage() {
    state = state.copyWith(showButton: true);
  }
}
