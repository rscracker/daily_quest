import 'dart:math';

import 'package:daily_quest/app/data/login/datasource/login_data_source.dart';
import 'package:daily_quest/app/services/user/model/user_model.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class LoginRepository {
  final LoginDataSource _loginDataSource;

  LoginRepository(this._loginDataSource);

  Future<UserModel?> kakaoLogin() async {
    bool result = await _loginDataSource.kakaoLogin();
    if (!result) null;
    return getLoginInfo();
  }

  Future<UserModel?> getLoginInfo() async {
    User? loginInfo = await _loginDataSource.getLoginInfo();
    if (loginInfo == null) return null;
    return UserModel(uid: loginInfo.id.toString());
  }
}
