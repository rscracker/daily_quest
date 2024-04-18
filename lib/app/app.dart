import 'package:daily_quest/app/modules/main/bindings/main_view_binding.dart';
import 'package:daily_quest/app/modules/main/views/main_view.dart';
import 'package:daily_quest/app/routes/app_pages.dart';
import 'package:daily_quest/app/services/user/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      initialBinding: BindingsBuilder(() {
        Get.put(UserService());
      }),
      getPages: AppPages.routes,
    );
  }
}
