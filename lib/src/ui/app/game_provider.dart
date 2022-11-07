import 'package:flutter/animation.dart';
import 'package:my_mathgame/src/core/app_constant.dart';
import 'package:my_mathgame/src/ui/app/time_provider.dart';

class GameProvider extends TimeProvider {
  final GameCategoryType gameCategoryType;

  GameProvider({required TickerProvider vsync, required this.gameCategoryType})
      : super(vsync: vsync, totalTime: KeyUtil.getTimeUtil(gameCategoryType));
}
