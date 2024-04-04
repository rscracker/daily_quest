import 'package:daily_quest/app/modules/home/view_model/home_view_model.dart';
import 'package:daily_quest/app/widgets/base_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('home'),
    );
  }
}
