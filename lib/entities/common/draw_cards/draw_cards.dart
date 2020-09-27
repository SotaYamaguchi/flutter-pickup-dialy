import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'draw_cards.freezed.dart';
part 'draw_cards.g.dart';

@freezed
abstract class DrawCards with _$DrawCards {
  factory DrawCards({
    List cardList,
    List cards,
  }) = _DrawCards;

  factory DrawCards.fromJson(Map<String, dynamic> json) =>
      _$DrawCardsFromJson(json);
}
