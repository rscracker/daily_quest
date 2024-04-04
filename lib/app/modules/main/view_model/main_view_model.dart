import 'package:get/get.dart';

class MainViewModel extends GetxController {
  final RxInt _selectedMenu = 0.obs;

  int get selectedMenu => _selectedMenu.value;

  void onTapMenu(int selectedMenu) {
    _selectedMenu(selectedMenu);
  }
}
