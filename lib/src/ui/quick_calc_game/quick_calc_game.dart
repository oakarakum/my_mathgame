// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_mathgame/src/ui/appbar/game_appbar.dart';
import 'package:my_mathgame/src/ui/quick_calc_game/quick_cal_game_gridview.dart';

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
      body: Column(
        children: [
          GameAppbar(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Next",
                          style: TextStyle(color: Colors.grey, fontSize: 15))
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Tutorial",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Elusive.info_circled,
                          size: 20,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  //SizedBox(height: 100),
                  SizedBox(height: 460, width: 500, child: GridViewKeypad())
                ],
              ))
        ],
      ),
    );
  }
}
