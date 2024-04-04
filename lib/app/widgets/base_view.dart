import 'package:daily_quest/app/widgets/base_scaffold.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

// Adjust BaseView to accept a generic parameter for the controller.
abstract class BaseView<T extends GetxController> extends GetView<T>
    with BaseScaffold {
  BaseView({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return baseScaffold(context);
  }
}
