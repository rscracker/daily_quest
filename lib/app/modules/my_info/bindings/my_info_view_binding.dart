import 'package:daily_quest/app/modules/my_info/view_model/my_info_view_model.dart';
import 'package:get/get.dart';

class MyInfoViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyInfoViewModel());
  }
}
