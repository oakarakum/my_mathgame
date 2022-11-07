import 'package:my_mathgame/src/ui/quick_calc_game/quick_calc_game.dart';
import 'package:my_mathgame/src/ui/quick_calc_game/quick_calc_game_bottomsheet.dart';

enum GameCategoryType {
  CALCULATOR,
  GUESS_SIGN,
  SQUARE_ROOT,
  MATH_PAIRS,
  CORRECT_ANSWER,
  MAGIC_TRIANGLE,
  MENTAL_ARITHMETIC,
  QUICK_CALCULATION,
  MATH_GRID,
  PICTURE_PUZZLE,
  NUMBER_PYRAMID
}

enum TimerStatus { restart, play, pause }

enum DiaglogType { non, info, over, pause, exit }

class KeyUtil {
  static const IS_DARK_MODE = "isDarkMode";
  static const String splash = "Splash";
  static const String dashboard = "DashBoard";
  static const String home = "Home";
  //
  static const String calculator = "Calculator";
  static const String guessSign = "GuessSign";
  static const String correctAnswer = "CorrectAnswer";
  static const String quickCalculation = "QuickCalculation";
  static const String mentalArithmetic = "MentalArithmetic";
  static const String squareRoot = "SquareRoot";
  static const String mathPairs = "MathPairs";
  static const String magicTriangle = " MagicTriangle";
  static const String picturePuzzle = " PicturePuzzle";
  static const String mathGrid = "MathGrid";
  static const String numberPyramid = "NumberPyramid";

  static int getTimeUtil(GameCategoryType gameCategoryType) {
    switch (gameCategoryType) {
      case GameCategoryType.CALCULATOR:
        return calculatorTimeOut;
      case GameCategoryType.GUESS_SIGN:
        return guessSignTimeout;
      case GameCategoryType.SQUARE_ROOT:
        return squareRootTimeout;
      case GameCategoryType.MATH_PAIRS:
        return mathematicalPairsTimeout;
      case GameCategoryType.CORRECT_ANSWER:
        return correctAnswerTimeout;
      case GameCategoryType.MAGIC_TRIANGLE:
        return magicTriangleTimeout;
      case GameCategoryType.MENTAL_ARITHMETIC:
        return mentalArithmeticTimeout;
      case GameCategoryType.QUICK_CALCULATION:
        return quickCalculationTimeout;
      case GameCategoryType.MATH_GRID:
        return mathGridTimeout;
      case GameCategoryType.PICTURE_PUZZLE:
        return picturePuzzleTimeout;
      case GameCategoryType.NUMBER_PYRAMID:
        return numPyramidTimeout;
    }
  }

  //Game Timeout Constants
  static int calculatorTimeOut = 5;
  static int guessSignTimeout = 5;
  static int correctAnswerTimeout = 5;
  static int quickCalculationTimeout = 20;
  static int quickCalculationPlusTime = 1;

  static int mentalArithmeticTimeout = 60;
  static int mentalAritmeticLocalTimeout = 4;
  static int squareRootTimeout = 5;
  static int mathGridTimeout = 120;
  static int mathematicalPairsTimeout = 60;

  static int magicTriangleTimeout = 60;
  static int picturePuzzleTimeout = 90;
  static int numPyramidTimeout = 120;
}
