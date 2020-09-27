// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'line_cards.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LineCards _$LineCardsFromJson(Map<String, dynamic> json) {
  return _LineCards.fromJson(json);
}

class _$LineCardsTearOff {
  const _$LineCardsTearOff();

// ignore: unused_element
  _LineCards call({List<int> totalCards}) {
    return _LineCards(
      totalCards: totalCards,
    );
  }
}

// ignore: unused_element
const $LineCards = _$LineCardsTearOff();

mixin _$LineCards {
  List<int> get totalCards;

  Map<String, dynamic> toJson();
  $LineCardsCopyWith<LineCards> get copyWith;
}

abstract class $LineCardsCopyWith<$Res> {
  factory $LineCardsCopyWith(LineCards value, $Res Function(LineCards) then) =
      _$LineCardsCopyWithImpl<$Res>;
  $Res call({List<int> totalCards});
}

class _$LineCardsCopyWithImpl<$Res> implements $LineCardsCopyWith<$Res> {
  _$LineCardsCopyWithImpl(this._value, this._then);

  final LineCards _value;
  // ignore: unused_field
  final $Res Function(LineCards) _then;

  @override
  $Res call({
    Object totalCards = freezed,
  }) {
    return _then(_value.copyWith(
      totalCards:
          totalCards == freezed ? _value.totalCards : totalCards as List<int>,
    ));
  }
}

abstract class _$LineCardsCopyWith<$Res> implements $LineCardsCopyWith<$Res> {
  factory _$LineCardsCopyWith(
          _LineCards value, $Res Function(_LineCards) then) =
      __$LineCardsCopyWithImpl<$Res>;
  @override
  $Res call({List<int> totalCards});
}

class __$LineCardsCopyWithImpl<$Res> extends _$LineCardsCopyWithImpl<$Res>
    implements _$LineCardsCopyWith<$Res> {
  __$LineCardsCopyWithImpl(_LineCards _value, $Res Function(_LineCards) _then)
      : super(_value, (v) => _then(v as _LineCards));

  @override
  _LineCards get _value => super._value as _LineCards;

  @override
  $Res call({
    Object totalCards = freezed,
  }) {
    return _then(_LineCards(
      totalCards:
          totalCards == freezed ? _value.totalCards : totalCards as List<int>,
    ));
  }
}

@JsonSerializable()
class _$_LineCards with DiagnosticableTreeMixin implements _LineCards {
  _$_LineCards({this.totalCards});

  factory _$_LineCards.fromJson(Map<String, dynamic> json) =>
      _$_$_LineCardsFromJson(json);

  @override
  final List<int> totalCards;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LineCards(totalCards: $totalCards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LineCards'))
      ..add(DiagnosticsProperty('totalCards', totalCards));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LineCards &&
            (identical(other.totalCards, totalCards) ||
                const DeepCollectionEquality()
                    .equals(other.totalCards, totalCards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(totalCards);

  @override
  _$LineCardsCopyWith<_LineCards> get copyWith =>
      __$LineCardsCopyWithImpl<_LineCards>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LineCardsToJson(this);
  }
}

abstract class _LineCards implements LineCards {
  factory _LineCards({List<int> totalCards}) = _$_LineCards;

  factory _LineCards.fromJson(Map<String, dynamic> json) =
      _$_LineCards.fromJson;

  @override
  List<int> get totalCards;
  @override
  _$LineCardsCopyWith<_LineCards> get copyWith;
}
