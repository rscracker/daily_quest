import 'package:daily_quest/app/modules/login/view_model/sign_up_view_model.dart';
import 'package:get/get.dart';

class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpViewModel());
  }
}
