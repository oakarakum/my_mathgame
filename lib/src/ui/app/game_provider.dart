import 'package:flutter/animation.dart';
import 'package:my_mathgame/src/core/app_constant.dart';
import 'package:my_mathgame/src/ui/app/time_provider.dart';
import 'package:get_it/get_it.dart';

class GameProvider<T> extends TimeProvider {
  final GameCategoryType gameCategoryType;

  late List list;
  late int index;
  late double currentScore;
  late double oldScore;
  late T currentState;
  late String result;

  GameProvider({required TickerProvider vsync, required this.gameCategoryType})
      : super(vsync: vsync, totalTime: KeyUtil.getTimeUtil(gameCategoryType));

  void startGame(async) {
    result = "";
  }

  List<T> getList(int level) {
    switch (gameCategoryType) {
      case GameCategoryType.CALCULATOR:
        break;
      default:
    }
  }
}
