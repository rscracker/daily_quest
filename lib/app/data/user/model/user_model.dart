// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    @Default('') String uid,
    @Default('') String name,
    @Default('') String nickname,
    @Default(0) int point,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);

  bool get isSignedUp => nickname.isNotEmpty;

  bool checkPoint(int cnt) {
    return point >= cnt;
  }

  UserModel changeNickname(String nickname) {
    return copyWith(nickname: nickname);
  }

  UserModel increasePoint(int cnt) {
    return copyWith(point: point + cnt);
  }

  UserModel decreasePoint(int cnt) {
    return copyWith(point: point - cnt);
  }
}
