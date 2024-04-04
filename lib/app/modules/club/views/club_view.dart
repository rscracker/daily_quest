import 'package:daily_quest/app/modules/club/view_model/club_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClubView extends GetView<ClubViewModel> {
  const ClubView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('club'),
    );
  }
}
