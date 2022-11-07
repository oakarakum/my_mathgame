import 'package:flutter/cupertino.dart';
import 'package:my_mathgame/src/core/app_constant.dart';

class TimeProvider with ChangeNotifier {
  //Animasyon kont memory hatası verebilir.
  TimeProvider({required TickerProvider vsync, required this.totalTime}) {
    _animationController = AnimationController(
        vsync: vsync,
        value: 1.0, //geriye doğru sayacak 0.9 0.8 gibi
        duration: Duration(seconds: totalTime));
  }

  late final AnimationController _animationController;
  final int totalTime;

  @override
  void dispose() {
    //Animasyon bittiğinde bellek kullanımı azaltmak için animasyonun çalışmasını durdurmak için kullanırız.
    _animationController.dispose();
    super
        .dispose(); //flutterın core kısmına etkisini yapmaz. Flutter yaşam döngüsünde ileri gitmesi için

    DiaglogType diaglogType = DiaglogType.non;
    TimerStatus timerStatus = TimerStatus.restart;

    void StartTimer() {
      _animationController.reverse();
      timerStatus = TimerStatus.play;
      diaglogType = DiaglogType.non;
    }
  }
}
