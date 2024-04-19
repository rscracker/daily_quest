import 'package:daily_quest/app/modules/club/views/club_view.dart';
import 'package:daily_quest/app/modules/game/views/game_view.dart';
import 'package:daily_quest/app/modules/home/views/home_view.dart';
import 'package:daily_quest/app/modules/main/view_model/main_view_model.dart';
import 'package:daily_quest/app/modules/my_info/views/my_info_view.dart';
import 'package:daily_quest/app/widgets/base_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MainView extends BaseView<MainViewModel> {
  MainView({Key? key}) : super(key: key);

  @override
  Widget bottomNavigationBar() {
    return Obx(() => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '일정',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '모임',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.gamepad),
              label: '게임',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '내 정보',
            ),
          ],
          currentIndex: controller.selectedMenu,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(color: Colors.black, fontSize: 12),
          onTap: controller.onTapMenu,
          type: BottomNavigationBarType.fixed,
        ));
  }

  @override
  Widget body(BuildContext context) {
    return Obx(() => IndexedStack(
          index: controller.selectedMenu,
          children: [
            HomeView(),
            const ClubView(),
            const GameView(),
            MyInfoView(),
          ],
        ));
  }
}
