// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:my_mathgame/src/ui/appbar/game_appbar.dart';
import 'package:my_mathgame/src/ui/quick_calc_game/quick_cal_game_gridview.dart';
import 'package:my_mathgame/src/ui/quick_calc_game/quick_calc_game_bottomsheet.dart';
import 'package:my_mathgame/src/ui/quick_calc_game/quick_calc_game_popup_gameover.dart';
import 'package:my_mathgame/src/ui/quick_calc_game/quick_calc_game_popup_pause.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class QuickCalculationGame extends StatefulWidget {
  const QuickCalculationGame({super.key});

  @override
  State<QuickCalculationGame> createState() => _QuickCalculationGameState();
}

class _QuickCalculationGameState extends State<QuickCalculationGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Color(0xff00b686),
      ),
      body: Stack(children: [
        Column(
          children: [
            GameAppbar(),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      //kum saati
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Column(
                            children: [
                              Text("Next",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15)),
                              Text("5 + 1",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15))
                            ],
                          ),
                        ),
                        CircularPercentIndicator(
                            progressColor: Color(0xff00b686),
                            restartAnimation: false,
                            backgroundColor: Colors.white,
                            animationDuration: 10000,
                            radius: 50.0,
                            lineWidth: 7.0,
                            animation: true,
                            percent: 1,
                            arcType: ArcType.FULL,
                            arcBackgroundColor: Colors.white,
                            reverse: true,
                            center: Image.asset(
                              "assets/gif/bluehourglass.gif",
                              height: 45,
                            )),
                      ],
                    ),
                    SizedBox(height: 45),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "8",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "1",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "=",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Color(0xff00b686),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                              "8",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 60),
                    quickCalcTutorial(),
                    SizedBox(height: 30),
                    SizedBox(height: 380, width: 500, child: GridViewKeypad())
                  ],
                ))
          ],
        ),
        QuickCalcPopupPause(),
        QuickCalcPopupGameOver()
      ]),
    );
  }
}
