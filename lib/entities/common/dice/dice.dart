import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dice.freezed.dart';
part 'dice.g.dart';

@freezed
abstract class Dice with _$Dice {
  factory Dice({
    int currentDiceNum,
    bool showButton,
  }) = _Dice;

  factory Dice.fromJson(Map<String, dynamic> json) => _$DiceFromJson(json);
}
