import 'package:daily_quest/app/modules/game/bindings/game_view_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameView extends GetView<GameViewBinding> {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('game'),
    );
  }
}
