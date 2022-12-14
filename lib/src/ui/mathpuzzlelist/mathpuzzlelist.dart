import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:my_mathgame/src/ui/appbar/defaultappbar.dart';
import 'package:my_mathgame/src/ui/quick_calc_game/quick_calc_game.dart';

class MathPuzzleList extends StatefulWidget {
  const MathPuzzleList({super.key});

  @override
  State<MathPuzzleList> createState() => _MathPuzzleListState();
}

class _MathPuzzleListState extends State<MathPuzzleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Color(0xff00b686),
      ),
      body: Column(
        children: [
          DefaultAppbar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuickCalculationGame()));
                  },
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.green,
                            Colors.blue,
                          ]),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/beyin-1.svg",
                          color: Color(0xffb64fc8),
                          height: 90,
                          width: 90,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Quick Calculation Game",
                                style: GoogleFonts.oswald(
                                    color: Color(0xffb64fc8), fontSize: 25),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Your Top Score:",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(width: 7),
                                    SvgPicture.asset(
                                        "assets/images/ic_trophy.svg"),
                                    SizedBox(width: 7),
                                    Text("000",
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
