import 'package:daily_quest/app/modules/game/view_model/game_view_model.dart';
import 'package:get/get.dart';

class GameViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GameViewModel());
  }
}
