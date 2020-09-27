import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'draw_card.freezed.dart';
part 'draw_card.g.dart';

@freezed
abstract class DrawCard with _$DrawCard {
  factory DrawCard({
    int cardNum,
    int cardKnd,
  }) = _DrawCard;

  factory DrawCard.fromJson(Map<String, dynamic> json) =>
      _$DrawCardFromJson(json);
}
