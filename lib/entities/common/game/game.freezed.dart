// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

class _$GameTearOff {
  const _$GameTearOff();

// ignore: unused_element
  _Game call({bool firstGame}) {
    return _Game(
      firstGame: firstGame,
    );
  }
}

// ignore: unused_element
const $Game = _$GameTearOff();

mixin _$Game {
  bool get firstGame;

  Map<String, dynamic> toJson();
  $GameCopyWith<Game> get copyWith;
}

abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res>;
  $Res call({bool firstGame});
}

class _$GameCopyWithImpl<$Res> implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  final Game _value;
  // ignore: unused_field
  final $Res Function(Game) _then;

  @override
  $Res call({
    Object firstGame = freezed,
  }) {
    return _then(_value.copyWith(
      firstGame: firstGame == freezed ? _value.firstGame : firstGame as bool,
    ));
  }
}

abstract class _$GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$GameCopyWith(_Game value, $Res Function(_Game) then) =
      __$GameCopyWithImpl<$Res>;
  @override
  $Res call({bool firstGame});
}

class __$GameCopyWithImpl<$Res> extends _$GameCopyWithImpl<$Res>
    implements _$GameCopyWith<$Res> {
  __$GameCopyWithImpl(_Game _value, $Res Function(_Game) _then)
      : super(_value, (v) => _then(v as _Game));

  @override
  _Game get _value => super._value as _Game;

  @override
  $Res call({
    Object firstGame = freezed,
  }) {
    return _then(_Game(
      firstGame: firstGame == freezed ? _value.firstGame : firstGame as bool,
    ));
  }
}

@JsonSerializable()
class _$_Game with DiagnosticableTreeMixin implements _Game {
  _$_Game({this.firstGame});

  factory _$_Game.fromJson(Map<String, dynamic> json) =>
      _$_$_GameFromJson(json);

  @override
  final bool firstGame;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Game(firstGame: $firstGame)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Game'))
      ..add(DiagnosticsProperty('firstGame', firstGame));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Game &&
            (identical(other.firstGame, firstGame) ||
                const DeepCollectionEquality()
                    .equals(other.firstGame, firstGame)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstGame);

  @override
  _$GameCopyWith<_Game> get copyWith =>
      __$GameCopyWithImpl<_Game>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameToJson(this);
  }
}

abstract class _Game implements Game {
  factory _Game({bool firstGame}) = _$_Game;

  factory _Game.fromJson(Map<String, dynamic> json) = _$_Game.fromJson;

  @override
  bool get firstGame;
  @override
  _$GameCopyWith<_Game> get copyWith;
}
