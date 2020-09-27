// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore: lines_longer_than_80_chars
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dice_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DiceStateTearOff {
  const _$DiceStateTearOff();

// ignore: unused_element
  _DiceState call(
      {int currentDiceNum = 1,
      int showDiceNum = 1,
      bool showButton = true,
      bool showCurrentDiceNum = true}) {
    return _DiceState(
      currentDiceNum: currentDiceNum,
      showDiceNum: showDiceNum,
      showButton: showButton,
      showCurrentDiceNum: showCurrentDiceNum,
    );
  }
}

// ignore: unused_element
const $DiceState = _$DiceStateTearOff();

mixin _$DiceState {
  int get currentDiceNum;
  int get showDiceNum;
  bool get showButton;
  bool get showCurrentDiceNum;

  $DiceStateCopyWith<DiceState> get copyWith;
}

abstract class $DiceStateCopyWith<$Res> {
  factory $DiceStateCopyWith(DiceState value, $Res Function(DiceState) then) =
      _$DiceStateCopyWithImpl<$Res>;
  $Res call(
      {int currentDiceNum,
      int showDiceNum,
      bool showButton,
      bool showCurrentDiceNum});
}

class _$DiceStateCopyWithImpl<$Res> implements $DiceStateCopyWith<$Res> {
  _$DiceStateCopyWithImpl(this._value, this._then);

  final DiceState _value;
  // ignore: unused_field
  final $Res Function(DiceState) _then;

  @override
  $Res call({
    Object currentDiceNum = freezed,
    Object showDiceNum = freezed,
    Object showButton = freezed,
    Object showCurrentDiceNum = freezed,
  }) {
    return _then(_value.copyWith(
      currentDiceNum: currentDiceNum == freezed
          ? _value.currentDiceNum
          : currentDiceNum as int,
      showDiceNum:
          showDiceNum == freezed ? _value.showDiceNum : showDiceNum as int,
      showButton:
          showButton == freezed ? _value.showButton : showButton as bool,
      showCurrentDiceNum: showCurrentDiceNum == freezed
          ? _value.showCurrentDiceNum
          : showCurrentDiceNum as bool,
    ));
  }
}

abstract class _$DiceStateCopyWith<$Res> implements $DiceStateCopyWith<$Res> {
  factory _$DiceStateCopyWith(
          _DiceState value, $Res Function(_DiceState) then) =
      __$DiceStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int currentDiceNum,
      int showDiceNum,
      bool showButton,
      bool showCurrentDiceNum});
}

class __$DiceStateCopyWithImpl<$Res> extends _$DiceStateCopyWithImpl<$Res>
    implements _$DiceStateCopyWith<$Res> {
  __$DiceStateCopyWithImpl(_DiceState _value, $Res Function(_DiceState) _then)
      : super(_value, (v) => _then(v as _DiceState));

  @override
  _DiceState get _value => super._value as _DiceState;

  @override
  $Res call({
    Object currentDiceNum = freezed,
    Object showDiceNum = freezed,
    Object showButton = freezed,
    Object showCurrentDiceNum = freezed,
  }) {
    return _then(_DiceState(
      currentDiceNum: currentDiceNum == freezed
          ? _value.currentDiceNum
          : currentDiceNum as int,
      showDiceNum:
          showDiceNum == freezed ? _value.showDiceNum : showDiceNum as int,
      showButton:
          showButton == freezed ? _value.showButton : showButton as bool,
      showCurrentDiceNum: showCurrentDiceNum == freezed
          ? _value.showCurrentDiceNum
          : showCurrentDiceNum as bool,
    ));
  }
}

class _$_DiceState with DiagnosticableTreeMixin implements _DiceState {
  const _$_DiceState(
      {this.currentDiceNum = 1,
      this.showDiceNum = 1,
      this.showButton = true,
      this.showCurrentDiceNum = true})
      : assert(currentDiceNum != null),
        assert(showDiceNum != null),
        assert(showButton != null),
        assert(showCurrentDiceNum != null);

  @JsonKey(defaultValue: 1)
  @override
  final int currentDiceNum;
  @JsonKey(defaultValue: 1)
  @override
  final int showDiceNum;
  @JsonKey(defaultValue: true)
  @override
  final bool showButton;
  @JsonKey(defaultValue: true)
  @override
  final bool showCurrentDiceNum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
// ignore: lines_longer_than_80_chars
    return 'DiceState(currentDiceNum: $currentDiceNum, showDiceNum: $showDiceNum, showButton: $showButton, showCurrentDiceNum: $showCurrentDiceNum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DiceState'))
      ..add(DiagnosticsProperty('currentDiceNum', currentDiceNum))
      ..add(DiagnosticsProperty('showDiceNum', showDiceNum))
      ..add(DiagnosticsProperty('showButton', showButton))
      ..add(DiagnosticsProperty('showCurrentDiceNum', showCurrentDiceNum));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiceState &&
            (identical(other.currentDiceNum, currentDiceNum) ||
                const DeepCollectionEquality()
                    .equals(other.currentDiceNum, currentDiceNum)) &&
            (identical(other.showDiceNum, showDiceNum) ||
                const DeepCollectionEquality()
                    .equals(other.showDiceNum, showDiceNum)) &&
            (identical(other.showButton, showButton) ||
                const DeepCollectionEquality()
                    .equals(other.showButton, showButton)) &&
            (identical(other.showCurrentDiceNum, showCurrentDiceNum) ||
                const DeepCollectionEquality()
                    .equals(other.showCurrentDiceNum, showCurrentDiceNum)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentDiceNum) ^
      const DeepCollectionEquality().hash(showDiceNum) ^
      const DeepCollectionEquality().hash(showButton) ^
      const DeepCollectionEquality().hash(showCurrentDiceNum);

  @override
  _$DiceStateCopyWith<_DiceState> get copyWith =>
      __$DiceStateCopyWithImpl<_DiceState>(this, _$identity);
}

abstract class _DiceState implements DiceState {
  const factory _DiceState(
      {int currentDiceNum,
      int showDiceNum,
      bool showButton,
      bool showCurrentDiceNum}) = _$_DiceState;

  @override
  int get currentDiceNum;
  @override
  int get showDiceNum;
  @override
  bool get showButton;
  @override
  bool get showCurrentDiceNum;
  @override
  _$DiceStateCopyWith<_DiceState> get copyWith;
}
