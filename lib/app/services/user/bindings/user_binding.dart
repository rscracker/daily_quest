import 'package:daily_quest/app/data/user/datasource/user_data_source.dart';
import 'package:daily_quest/app/data/user/repository/user_respository.dart';
import 'package:daily_quest/app/services/user/user_service.dart';
import 'package:get/get.dart';

class UserBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UserDataSource(), permanent: true);
    Get.put(UserRepository(Get.find<UserDataSource>()), permanent: true);
    Get.put(UserService(Get.find<UserRepository>()), permanent: true);
  }
}
