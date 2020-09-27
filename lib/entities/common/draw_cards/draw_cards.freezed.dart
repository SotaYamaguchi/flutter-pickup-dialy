// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore: lines_longer_than_80_chars
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'draw_cards.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DrawCards _$DrawCardsFromJson(Map<String, dynamic> json) {
  return _DrawCards.fromJson(json);
}

class _$DrawCardsTearOff {
  const _$DrawCardsTearOff();

// ignore: unused_element
  _DrawCards call({List<dynamic> cardList, List<dynamic> cards}) {
    return _DrawCards(
      cardList: cardList,
      cards: cards,
    );
  }
}

// ignore: unused_element
const $DrawCards = _$DrawCardsTearOff();

mixin _$DrawCards {
  List<dynamic> get cardList;
  List<dynamic> get cards;

  Map<String, dynamic> toJson();
  $DrawCardsCopyWith<DrawCards> get copyWith;
}

abstract class $DrawCardsCopyWith<$Res> {
  factory $DrawCardsCopyWith(DrawCards value, $Res Function(DrawCards) then) =
      _$DrawCardsCopyWithImpl<$Res>;
  $Res call({List<dynamic> cardList, List<dynamic> cards});
}

class _$DrawCardsCopyWithImpl<$Res> implements $DrawCardsCopyWith<$Res> {
  _$DrawCardsCopyWithImpl(this._value, this._then);

  final DrawCards _value;
  // ignore: unused_field
  final $Res Function(DrawCards) _then;

  @override
  $Res call({
    Object cardList = freezed,
    Object cards = freezed,
  }) {
    return _then(_value.copyWith(
      cardList:
          cardList == freezed ? _value.cardList : cardList as List<dynamic>,
      cards: cards == freezed ? _value.cards : cards as List<dynamic>,
    ));
  }
}

abstract class _$DrawCardsCopyWith<$Res> implements $DrawCardsCopyWith<$Res> {
  factory _$DrawCardsCopyWith(
          _DrawCards value, $Res Function(_DrawCards) then) =
      __$DrawCardsCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> cardList, List<dynamic> cards});
}

class __$DrawCardsCopyWithImpl<$Res> extends _$DrawCardsCopyWithImpl<$Res>
    implements _$DrawCardsCopyWith<$Res> {
  __$DrawCardsCopyWithImpl(_DrawCards _value, $Res Function(_DrawCards) _then)
      : super(_value, (v) => _then(v as _DrawCards));

  @override
  _DrawCards get _value => super._value as _DrawCards;

  @override
  $Res call({
    Object cardList = freezed,
    Object cards = freezed,
  }) {
    return _then(_DrawCards(
      cardList:
          cardList == freezed ? _value.cardList : cardList as List<dynamic>,
      cards: cards == freezed ? _value.cards : cards as List<dynamic>,
    ));
  }
}

@JsonSerializable()
class _$_DrawCards with DiagnosticableTreeMixin implements _DrawCards {
  _$_DrawCards({this.cardList, this.cards});

  factory _$_DrawCards.fromJson(Map<String, dynamic> json) =>
      _$_$_DrawCardsFromJson(json);

  @override
  final List<dynamic> cardList;
  @override
  final List<dynamic> cards;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DrawCards(cardList: $cardList, cards: $cards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DrawCards'))
      ..add(DiagnosticsProperty('cardList', cardList))
      ..add(DiagnosticsProperty('cards', cards));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DrawCards &&
            (identical(other.cardList, cardList) ||
                const DeepCollectionEquality()
                    .equals(other.cardList, cardList)) &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cardList) ^
      const DeepCollectionEquality().hash(cards);

  @override
  _$DrawCardsCopyWith<_DrawCards> get copyWith =>
      __$DrawCardsCopyWithImpl<_DrawCards>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DrawCardsToJson(this);
  }
}

abstract class _DrawCards implements DrawCards {
  factory _DrawCards({List<dynamic> cardList, List<dynamic> cards}) =
      _$_DrawCards;

  factory _DrawCards.fromJson(Map<String, dynamic> json) =
      _$_DrawCards.fromJson;

  @override
  List<dynamic> get cardList;
  @override
  List<dynamic> get cards;
  @override
  _$DrawCardsCopyWith<_DrawCards> get copyWith;
}
