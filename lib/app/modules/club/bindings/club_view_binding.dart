import 'package:daily_quest/app/modules/club/view_model/club_view_model.dart';
import 'package:get/get.dart';

class ClubViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ClubViewModel());
  }
}
