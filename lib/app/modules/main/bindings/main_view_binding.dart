import 'package:daily_quest/app/modules/main/view_model/main_view_model.dart';
import 'package:get/get.dart';

class MainViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainViewModel());
  }
}
