import 'package:daily_quest/app/modules/club/bindings/club_view_binding.dart';
import 'package:daily_quest/app/modules/game/bindings/game_view_binding.dart';
import 'package:daily_quest/app/modules/home/bindings/home_view_binding.dart';
import 'package:daily_quest/app/modules/main/view_model/main_view_model.dart';
import 'package:daily_quest/app/modules/my_info/bindings/my_info_view_binding.dart';
import 'package:get/get.dart';

class MainViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainViewModel());
  }
}
