import 'package:daily_quest/app/data/login/datasource/login_data_source.dart';
import 'package:daily_quest/app/data/login/repository/login_repository.dart';
import 'package:daily_quest/app/modules/login/view_model/login_view_model.dart';
import 'package:get/get.dart';

class LoginViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginDataSource());
    Get.lazyPut(() => LoginRepository(Get.find<LoginDataSource>()));
    Get.lazyPut(() => LoginViewModel(Get.find<LoginRepository>()));
  }
}
