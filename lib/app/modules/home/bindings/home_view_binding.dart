import 'package:daily_quest/app/modules/home/view_model/home_view_model.dart';
import 'package:get/get.dart';

class HomeViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewModel());
  }
}
