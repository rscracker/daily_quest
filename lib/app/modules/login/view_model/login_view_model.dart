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
    UserModel? user = await _loginRepository.kakaoLogin();
    if (user != null) {
      _userService.updateUser(user);
      Get.toNamed(AppRoutes.home);
    }
  }
}
