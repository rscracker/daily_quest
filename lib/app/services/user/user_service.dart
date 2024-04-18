import 'package:daily_quest/app/services/user/model/user_model.dart';
import 'package:get/get.dart';

class UserService extends GetxService {
  static UserService get to => Get.find<UserService>();

  final Rx<UserModel> _user = const UserModel().obs;

  void updateUser(UserModel? user) {
    if (user != null) _user.value = user;
  }
}
