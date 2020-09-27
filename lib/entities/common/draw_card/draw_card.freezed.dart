// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore: lines_longer_than_80_chars
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'draw_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DrawCard _$DrawCardFromJson(Map<String, dynamic> json) {
  return _DrawCard.fromJson(json);
}

class _$DrawCardTearOff {
  const _$DrawCardTearOff();

// ignore: unused_element
  _DrawCard call({int cardNum, int cardKnd}) {
    return _DrawCard(
      cardNum: cardNum,
      cardKnd: cardKnd,
    );
  }
}

// ignore: unused_element
const $DrawCard = _$DrawCardTearOff();

mixin _$DrawCard {
  int get cardNum;
  int get cardKnd;

  Map<String, dynamic> toJson();
  $DrawCardCopyWith<DrawCard> get copyWith;
}

abstract class $DrawCardCopyWith<$Res> {
  factory $DrawCardCopyWith(DrawCard value, $Res Function(DrawCard) then) =
      _$DrawCardCopyWithImpl<$Res>;
  $Res call({int cardNum, int cardKnd});
}

class _$DrawCardCopyWithImpl<$Res> implements $DrawCardCopyWith<$Res> {
  _$DrawCardCopyWithImpl(this._value, this._then);

  final DrawCard _value;
  // ignore: unused_field
  final $Res Function(DrawCard) _then;

  @override
  $Res call({
    Object cardNum = freezed,
    Object cardKnd = freezed,
  }) {
    return _then(_value.copyWith(
      cardNum: cardNum == freezed ? _value.cardNum : cardNum as int,
      cardKnd: cardKnd == freezed ? _value.cardKnd : cardKnd as int,
    ));
  }
}

abstract class _$DrawCardCopyWith<$Res> implements $DrawCardCopyWith<$Res> {
  factory _$DrawCardCopyWith(_DrawCard value, $Res Function(_DrawCard) then) =
      __$DrawCardCopyWithImpl<$Res>;
  @override
  $Res call({int cardNum, int cardKnd});
}

class __$DrawCardCopyWithImpl<$Res> extends _$DrawCardCopyWithImpl<$Res>
    implements _$DrawCardCopyWith<$Res> {
  __$DrawCardCopyWithImpl(_DrawCard _value, $Res Function(_DrawCard) _then)
      : super(_value, (v) => _then(v as _DrawCard));

  @override
  _DrawCard get _value => super._value as _DrawCard;

  @override
  $Res call({
    Object cardNum = freezed,
    Object cardKnd = freezed,
  }) {
    return _then(_DrawCard(
      cardNum: cardNum == freezed ? _value.cardNum : cardNum as int,
      cardKnd: cardKnd == freezed ? _value.cardKnd : cardKnd as int,
    ));
  }
}

@JsonSerializable()
class _$_DrawCard with DiagnosticableTreeMixin implements _DrawCard {
  _$_DrawCard({this.cardNum, this.cardKnd});

  factory _$_DrawCard.fromJson(Map<String, dynamic> json) =>
      _$_$_DrawCardFromJson(json);

  @override
  final int cardNum;
  @override
  final int cardKnd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DrawCard(cardNum: $cardNum, cardKnd: $cardKnd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DrawCard'))
      ..add(DiagnosticsProperty('cardNum', cardNum))
      ..add(DiagnosticsProperty('cardKnd', cardKnd));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DrawCard &&
            (identical(other.cardNum, cardNum) ||
                const DeepCollectionEquality()
                    .equals(other.cardNum, cardNum)) &&
            (identical(other.cardKnd, cardKnd) ||
                const DeepCollectionEquality().equals(other.cardKnd, cardKnd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cardNum) ^
      const DeepCollectionEquality().hash(cardKnd);

  @override
  _$DrawCardCopyWith<_DrawCard> get copyWith =>
      __$DrawCardCopyWithImpl<_DrawCard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DrawCardToJson(this);
  }
}

abstract class _DrawCard implements DrawCard {
  factory _DrawCard({int cardNum, int cardKnd}) = _$_DrawCard;

  factory _DrawCard.fromJson(Map<String, dynamic> json) = _$_DrawCard.fromJson;

  @override
  int get cardNum;
  @override
  int get cardKnd;
  @override
  _$DrawCardCopyWith<_DrawCard> get copyWith;
}
