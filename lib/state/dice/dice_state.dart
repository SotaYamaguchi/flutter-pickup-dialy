import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dice_state.freezed.dart';

@freezed
abstract class DiceState with _$DiceState {
  const factory DiceState({
    @Default(1) int currentDiceNum,
    @Default(1) int showDiceNum,
    @Default(true) bool showButton,
    @Default(true) bool showCurrentDiceNum,
  }) = _DiceState;
}
