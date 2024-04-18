import 'package:daily_quest/app/modules/club/bindings/club_view_binding.dart';
import 'package:daily_quest/app/modules/game/bindings/game_view_binding.dart';
import 'package:daily_quest/app/modules/home/bindings/home_view_binding.dart';
import 'package:daily_quest/app/modules/home/views/home_view.dart';
import 'package:daily_quest/app/modules/login/bindings/login_view_binding.dart';
import 'package:daily_quest/app/modules/login/views/login_view.dart';
import 'package:daily_quest/app/modules/main/bindings/main_view_binding.dart';
import 'package:daily_quest/app/modules/main/views/main_view.dart';
import 'package:daily_quest/app/modules/my_info/bindings/my_info_view_binding.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(name: '/main', page: () => MainView(), bindings: [
      MainViewBinding(),
      HomeViewBinding(),
      GameViewBinding(),
      MyInfoViewBinding(),
      ClubViewBinding(),
    ]),
    GetPage(name: '/home', page: () => HomeView(), bindings: [
      HomeViewBinding(),
    ]),
    GetPage(
        name: '/login',
        page: () => LoginView(),
        bindings: [LoginViewBinding()]),
  ];
}
