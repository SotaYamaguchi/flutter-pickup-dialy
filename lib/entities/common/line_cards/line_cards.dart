import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'line_cards.freezed.dart';
part 'line_cards.g.dart';

@freezed
abstract class LineCards with _$LineCards {
  factory LineCards({
    List<int> totalCards,
  }) = _LineCards;

  factory LineCards.fromJson(Map<String, dynamic> json) =>
      _$LineCardsFromJson(json);
}
