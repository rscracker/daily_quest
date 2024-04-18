import 'package:daily_quest/app/routes/app_routes.dart';
import 'package:daily_quest/app/services/user/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpViewModel extends GetxController {
  final _userService = UserService.to;
  final TextEditingController nickController = TextEditingController();
  final RxString _nickCheckMessage = ''.obs;
  final RxBool _isNickChecked = false.obs;
  final RxBool _isNickAvailable = false.obs;

  bool get isNickAvailable => _isNickAvailable.value;
  String get nickCheckMessage => _nickCheckMessage.value;

  @override
  void onReady() {
    nickController.addListener(() {
      resetNickField();
    });
    super.onReady();
  }

  @override
  void onClose() {
    nickController.dispose();
    super.onClose();
  }

  void onNickSubmitted(String nickname) async {
    if (nickname.isEmpty) {
      _nickCheckMessage.value = '닉네임을 입력해주세요.';
      _isNickAvailable.value = false;
      _isNickChecked.value = false;
      return;
    }
    _isNickChecked.value = await _userService.checkNickName(nickname);
    if (_isNickChecked.value) {
      _nickCheckMessage.value = '사용 가능한 닉네임입니다.';
      _isNickAvailable.value = true;
    } else {
      _nickCheckMessage.value = '이미 사용중인 닉네임입니다.';
      _isNickAvailable.value = false;
    }
  }

  void resetNickField() {
    _isNickChecked.value = false;
    _isNickAvailable.value = false;
    _nickCheckMessage.value = '';
  }

  Future<void> onPressedSignUp() async {
    await _userService.changeNick(nickController.text);
    Get.toNamed(AppRoutes.main);
  }
}
