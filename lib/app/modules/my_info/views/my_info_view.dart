import 'package:daily_quest/app/modules/my_info/view_model/my_info_view_model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyInfoView extends GetView<MyInfoViewModel> {
  MyInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('myinfo'),
    );
  }
}
