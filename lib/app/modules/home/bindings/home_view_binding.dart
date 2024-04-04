import 'package:get/get.dart';

class HomeViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewBinding());
  }
}
