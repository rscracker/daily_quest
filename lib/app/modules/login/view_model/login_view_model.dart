import 'package:daily_quest/app/data/login/repository/login_repository.dart';
import 'package:daily_quest/app/routes/app_pages.dart';
import 'package:daily_quest/app/routes/app_routes.dart';
import 'package:daily_quest/app/services/user/model/user_model.dart';
import 'package:daily_quest/app/services/user/user_service.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  final LoginRepository _loginRepository;
  final _userService = UserService.to;
  LoginViewModel(this._loginRepository);

  Future<void> login() async {
    try {
      UserModel? user = await _loginRepository.kakaoLogin();
      if (user == null) {
        Get.snackbar('로그인 실패', '로그인 정보를 확인할 수 없습니다.');
        return;
      }
      await checkUser(user);
    } catch (e) {
      Get.snackbar('로그인 에러', '로그인 중 문제가 발생했습니다: $e');
    }
  }

  Future<void> checkUser(UserModel user) async {
    UserModel? savedUser = await _userService.getUser(user.uid);
    if (savedUser == null) {
      _userService.updateUser(user);
      Get.toNamed(AppRoutes.signUp);
      return;
    }
    if (savedUser.isSignedUp) {
      Get.toNamed(AppRoutes.main);
    } else {
      Get.toNamed(AppRoutes.signUp);
    }
  }
}
