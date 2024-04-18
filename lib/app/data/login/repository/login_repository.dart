import 'dart:math';

import 'package:daily_quest/app/data/login/datasource/login_data_source.dart';
import 'package:daily_quest/app/data/user/model/user_model.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class LoginRepository {
  final LoginDataSource _loginDataSource;

  LoginRepository(this._loginDataSource);

  Future<UserModel?> kakaoLogin() async {
    try {
      await _loginDataSource.kakaoLogin();
      User? user = await _loginDataSource.getLoginInfo();
      if (user == null) {
        throw Exception('사용자 정보가 없습니다.');
      }
      return UserModel(uid: user.id.toString());
    } catch (e) {
      rethrow; // 예외를 그대로 상위로 전달
    }
  }
}
