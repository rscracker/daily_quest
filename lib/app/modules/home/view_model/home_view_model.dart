import 'package:daily_quest/app/services/user/user_service.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final _userService = UserService.to;

  String get nickname => _userService.nickname;
}
