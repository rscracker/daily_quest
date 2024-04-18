import 'package:daily_quest/app/services/todo/todo_service.dart';
import 'package:get/get.dart';

class TodoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TodoService());
  }
}
