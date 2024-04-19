import 'package:daily_quest/app/data/user/datasource/user_data_source.dart';
import 'package:daily_quest/app/data/user/repository/user_respository.dart';
import 'package:daily_quest/app/modules/main/bindings/main_view_binding.dart';
import 'package:daily_quest/app/modules/main/views/main_view.dart';
import 'package:daily_quest/app/routes/app_pages.dart';
import 'package:daily_quest/app/services/user/bindings/user_binding.dart';
import 'package:daily_quest/app/services/user/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
          fontFamily: 'NotoSansKR'),
      initialRoute: '/main',
      initialBinding: BindingsBuilder(() {
        UserBinding().dependencies();
      }),
      getPages: AppPages.routes,
    );
  }
}
