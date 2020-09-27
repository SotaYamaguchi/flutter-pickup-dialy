// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore: lines_longer_than_80_chars
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Dice _$DiceFromJson(Map<String, dynamic> json) {
  return _Dice.fromJson(json);
}

class _$DiceTearOff {
  const _$DiceTearOff();

// ignore: unused_element
  _Dice call({int currentDiceNum, bool showButton}) {
    return _Dice(
      currentDiceNum: currentDiceNum,
      showButton: showButton,
    );
  }
}

// ignore: unused_element
const $Dice = _$DiceTearOff();

mixin _$Dice {
  int get currentDiceNum;
  bool get showButton;

  Map<String, dynamic> toJson();
  $DiceCopyWith<Dice> get copyWith;
}

abstract class $DiceCopyWith<$Res> {
  factory $DiceCopyWith(Dice value, $Res Function(Dice) then) =
      _$DiceCopyWithImpl<$Res>;
  $Res call({int currentDiceNum, bool showButton});
}

class _$DiceCopyWithImpl<$Res> implements $DiceCopyWith<$Res> {
  _$DiceCopyWithImpl(this._value, this._then);

  final Dice _value;
  // ignore: unused_field
  final $Res Function(Dice) _then;

  @override
  $Res call({
    Object currentDiceNum = freezed,
    Object showButton = freezed,
  }) {
    return _then(_value.copyWith(
      currentDiceNum: currentDiceNum == freezed
          ? _value.currentDiceNum
          : currentDiceNum as int,
      showButton:
          showButton == freezed ? _value.showButton : showButton as bool,
    ));
  }
}

abstract class _$DiceCopyWith<$Res> implements $DiceCopyWith<$Res> {
  factory _$DiceCopyWith(_Dice value, $Res Function(_Dice) then) =
      __$DiceCopyWithImpl<$Res>;
  @override
  $Res call({int currentDiceNum, bool showButton});
}

class __$DiceCopyWithImpl<$Res> extends _$DiceCopyWithImpl<$Res>
    implements _$DiceCopyWith<$Res> {
  __$DiceCopyWithImpl(_Dice _value, $Res Function(_Dice) _then)
      : super(_value, (v) => _then(v as _Dice));

  @override
  _Dice get _value => super._value as _Dice;

  @override
  $Res call({
    Object currentDiceNum = freezed,
    Object showButton = freezed,
  }) {
    return _then(_Dice(
      currentDiceNum: currentDiceNum == freezed
          ? _value.currentDiceNum
          : currentDiceNum as int,
      showButton:
          showButton == freezed ? _value.showButton : showButton as bool,
    ));
  }
}

@JsonSerializable()
class _$_Dice with DiagnosticableTreeMixin implements _Dice {
  _$_Dice({this.currentDiceNum, this.showButton});

  factory _$_Dice.fromJson(Map<String, dynamic> json) =>
      _$_$_DiceFromJson(json);

  @override
  final int currentDiceNum;
  @override
  final bool showButton;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Dice(currentDiceNum: $currentDiceNum, showButton: $showButton)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Dice'))
      ..add(DiagnosticsProperty('currentDiceNum', currentDiceNum))
      ..add(DiagnosticsProperty('showButton', showButton));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Dice &&
            (identical(other.currentDiceNum, currentDiceNum) ||
                const DeepCollectionEquality()
                    .equals(other.currentDiceNum, currentDiceNum)) &&
            (identical(other.showButton, showButton) ||
                const DeepCollectionEquality()
                    .equals(other.showButton, showButton)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentDiceNum) ^
      const DeepCollectionEquality().hash(showButton);

  @override
  _$DiceCopyWith<_Dice> get copyWith =>
      __$DiceCopyWithImpl<_Dice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DiceToJson(this);
  }
}

abstract class _Dice implements Dice {
  factory _Dice({int currentDiceNum, bool showButton}) = _$_Dice;

  factory _Dice.fromJson(Map<String, dynamic> json) = _$_Dice.fromJson;

  @override
  int get currentDiceNum;
  @override
  bool get showButton;
  @override
  _$DiceCopyWith<_Dice> get copyWith;
}
