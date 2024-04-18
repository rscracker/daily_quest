import 'dart:ffi';

import 'package:daily_quest/app/data/user/datasource/user_data_source.dart';
import 'package:daily_quest/app/data/user/repository/user_respository.dart';
import 'package:daily_quest/app/services/user/model/user_model.dart';
import 'package:get/get.dart';

class UserService extends GetxService {
  static UserService get to => Get.find<UserService>();
  final UserRepository _userRepository;

  UserService(this._userRepository);

  final Rx<UserModel> _user = const UserModel().obs;
  String get nickname => _user.value.nickname;

  void updateUid(String uid) {
    _user.value = _user.value.copyWith(uid: uid);
  }

  Future<void> updateUser(UserModel? user) async {
    if (user != null) {
      await _userRepository.updateUser(user: user);
    }
  }

  Future<UserModel?> getUser(String uid) async {
    UserModel? user = await _userRepository.getUser(uid: uid);
    if (user == null) return null;
    _user.value = user;
    return user;
  }

  Future<bool> checkNickName(String nickname) {
    return _userRepository.checkNickName(nickname: nickname);
  }

  Future<void> changeNick(String nickname) async {
    _user.value = _user.value.changeNickname(nickname);
    _userRepository.updateUser(user: _user.value);
  }
}
