import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_navigator.freezed.dart';
part 'home_navigator.g.dart';

@freezed
abstract class HomeNavigator with _$HomeNavigator {
  factory HomeNavigator({
    int navigatorNum,
    bool entoryNavigate,
    int currentPageNum,
    bool canNavigate,
  }) = _HomeNavigator;

  factory HomeNavigator.fromJson(Map<String, dynamic> json) =>
      _$HomeNavigatorFromJson(json);
}
