// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_navigator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HomeNavigator _$HomeNavigatorFromJson(Map<String, dynamic> json) {
  return _HomeNavigator.fromJson(json);
}

class _$HomeNavigatorTearOff {
  const _$HomeNavigatorTearOff();

// ignore: unused_element
  _HomeNavigator call(
      {int navigatorNum,
      bool entoryNavigate,
      int currentPageNum,
      bool canNavigate}) {
    return _HomeNavigator(
      navigatorNum: navigatorNum,
      entoryNavigate: entoryNavigate,
      currentPageNum: currentPageNum,
      canNavigate: canNavigate,
    );
  }
}

// ignore: unused_element
const $HomeNavigator = _$HomeNavigatorTearOff();

mixin _$HomeNavigator {
  int get navigatorNum;
  bool get entoryNavigate;
  int get currentPageNum;
  bool get canNavigate;

  Map<String, dynamic> toJson();
  $HomeNavigatorCopyWith<HomeNavigator> get copyWith;
}

abstract class $HomeNavigatorCopyWith<$Res> {
  factory $HomeNavigatorCopyWith(
          HomeNavigator value, $Res Function(HomeNavigator) then) =
      _$HomeNavigatorCopyWithImpl<$Res>;
  $Res call(
      {int navigatorNum,
      bool entoryNavigate,
      int currentPageNum,
      bool canNavigate});
}

class _$HomeNavigatorCopyWithImpl<$Res>
    implements $HomeNavigatorCopyWith<$Res> {
  _$HomeNavigatorCopyWithImpl(this._value, this._then);

  final HomeNavigator _value;
  // ignore: unused_field
  final $Res Function(HomeNavigator) _then;

  @override
  $Res call({
    Object navigatorNum = freezed,
    Object entoryNavigate = freezed,
    Object currentPageNum = freezed,
    Object canNavigate = freezed,
  }) {
    return _then(_value.copyWith(
      navigatorNum:
          navigatorNum == freezed ? _value.navigatorNum : navigatorNum as int,
      entoryNavigate: entoryNavigate == freezed
          ? _value.entoryNavigate
          : entoryNavigate as bool,
      currentPageNum: currentPageNum == freezed
          ? _value.currentPageNum
          : currentPageNum as int,
      canNavigate:
          canNavigate == freezed ? _value.canNavigate : canNavigate as bool,
    ));
  }
}

abstract class _$HomeNavigatorCopyWith<$Res>
    implements $HomeNavigatorCopyWith<$Res> {
  factory _$HomeNavigatorCopyWith(
          _HomeNavigator value, $Res Function(_HomeNavigator) then) =
      __$HomeNavigatorCopyWithImpl<$Res>;
  @override
  $Res call(
      {int navigatorNum,
      bool entoryNavigate,
      int currentPageNum,
      bool canNavigate});
}

class __$HomeNavigatorCopyWithImpl<$Res>
    extends _$HomeNavigatorCopyWithImpl<$Res>
    implements _$HomeNavigatorCopyWith<$Res> {
  __$HomeNavigatorCopyWithImpl(
      _HomeNavigator _value, $Res Function(_HomeNavigator) _then)
      : super(_value, (v) => _then(v as _HomeNavigator));

  @override
  _HomeNavigator get _value => super._value as _HomeNavigator;

  @override
  $Res call({
    Object navigatorNum = freezed,
    Object entoryNavigate = freezed,
    Object currentPageNum = freezed,
    Object canNavigate = freezed,
  }) {
    return _then(_HomeNavigator(
      navigatorNum:
          navigatorNum == freezed ? _value.navigatorNum : navigatorNum as int,
      entoryNavigate: entoryNavigate == freezed
          ? _value.entoryNavigate
          : entoryNavigate as bool,
      currentPageNum: currentPageNum == freezed
          ? _value.currentPageNum
          : currentPageNum as int,
      canNavigate:
          canNavigate == freezed ? _value.canNavigate : canNavigate as bool,
    ));
  }
}

@JsonSerializable()
class _$_HomeNavigator with DiagnosticableTreeMixin implements _HomeNavigator {
  _$_HomeNavigator(
      {this.navigatorNum,
      this.entoryNavigate,
      this.currentPageNum,
      this.canNavigate});

  factory _$_HomeNavigator.fromJson(Map<String, dynamic> json) =>
      _$_$_HomeNavigatorFromJson(json);

  @override
  final int navigatorNum;
  @override
  final bool entoryNavigate;
  @override
  final int currentPageNum;
  @override
  final bool canNavigate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeNavigator(navigatorNum: $navigatorNum, entoryNavigate: $entoryNavigate, currentPageNum: $currentPageNum, canNavigate: $canNavigate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeNavigator'))
      ..add(DiagnosticsProperty('navigatorNum', navigatorNum))
      ..add(DiagnosticsProperty('entoryNavigate', entoryNavigate))
      ..add(DiagnosticsProperty('currentPageNum', currentPageNum))
      ..add(DiagnosticsProperty('canNavigate', canNavigate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeNavigator &&
            (identical(other.navigatorNum, navigatorNum) ||
                const DeepCollectionEquality()
                    .equals(other.navigatorNum, navigatorNum)) &&
            (identical(other.entoryNavigate, entoryNavigate) ||
                const DeepCollectionEquality()
                    .equals(other.entoryNavigate, entoryNavigate)) &&
            (identical(other.currentPageNum, currentPageNum) ||
                const DeepCollectionEquality()
                    .equals(other.currentPageNum, currentPageNum)) &&
            (identical(other.canNavigate, canNavigate) ||
                const DeepCollectionEquality()
                    .equals(other.canNavigate, canNavigate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(navigatorNum) ^
      const DeepCollectionEquality().hash(entoryNavigate) ^
      const DeepCollectionEquality().hash(currentPageNum) ^
      const DeepCollectionEquality().hash(canNavigate);

  @override
  _$HomeNavigatorCopyWith<_HomeNavigator> get copyWith =>
      __$HomeNavigatorCopyWithImpl<_HomeNavigator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomeNavigatorToJson(this);
  }
}

abstract class _HomeNavigator implements HomeNavigator {
  factory _HomeNavigator(
      {int navigatorNum,
      bool entoryNavigate,
      int currentPageNum,
      bool canNavigate}) = _$_HomeNavigator;

  factory _HomeNavigator.fromJson(Map<String, dynamic> json) =
      _$_HomeNavigator.fromJson;

  @override
  int get navigatorNum;
  @override
  bool get entoryNavigate;
  @override
  int get currentPageNum;
  @override
  bool get canNavigate;
  @override
  _$HomeNavigatorCopyWith<_HomeNavigator> get copyWith;
}
