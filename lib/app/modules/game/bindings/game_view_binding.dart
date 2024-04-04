import 'package:get/get.dart';

class GameViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GameViewBinding());
  }
}
