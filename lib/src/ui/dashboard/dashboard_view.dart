// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';

import 'package:fluttericon/typicons_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_mathgame/src/ui/mathpuzzlelist/mathpuzzlelist.dart';
import 'package:my_mathgame/src/ui/quick_calc_game/quick_calc_game.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  splashColor: Colors.black,
                  onTap: () {},
                  child: Row(children: [
                    Icon(
                      Icons.light_mode,
                      size: 25,
                      color: Colors.yellow,
                    ),
                    Text("Lights On",
                        style: TextStyle(color: Colors.white, fontSize: 20))
                  ]),
                ),
                Container(
                  height: 40,
                  width: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 39, 41, 43)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ),
                        Text(
                          "000",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ]),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 2, color: Color(0xffC94f7C))),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: 200,
                      width: 150,
                      child: Image.asset(
                        "assets/dashboard_assets/eins.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ShaderMask(
                      shaderCallback: (rect) => LinearGradient(
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.indigoAccent, Colors.pink],
                      ).createShader(rect),
                      child: Text("Math\n\n  Games",
                          style: GoogleFonts.aclonica(
                              color: Color(0xffC94f7C), fontSize: 40)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MathPuzzleList()));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.purple,
                                Colors.pink,
                                Colors.red,
                              ]),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                    "assets/dashboard_assets/fourEq.png"),
                                ShaderMask(
                                  shaderCallback: (rect) => LinearGradient(
                                    tileMode: TileMode.clamp,
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Colors.indigoAccent, Colors.pink],
                                  ).createShader(rect),
                                  child: Text("Math Puzzle Games",
                                      style: GoogleFonts.aldrich(
                                          color: Color(0xffC94f7C),
                                          fontSize: 23)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    );
                  })),
            )
            //SizedBox(height: 10),
            /* InkWell(
              onTap: () {},
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.purple,
                    Colors.pink,
                    Colors.red,
                  ]),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(width: 80,height: 80,
                          child: Image.asset(
                              "assets/dashboard_assets/brain_on_fire.jpg",
                              fit: BoxFit.cover,
                              )),
                    ),
                    ShaderMask(
                      shaderCallback: (rect) => LinearGradient(
                        tileMode: TileMode.clamp,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.indigoAccent, Colors.pink],
                      ).createShader(rect),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Mind Puzzle Games",
                            style: GoogleFonts.aldrich(
                                color: Color(0xffC94f7C), fontSize: 23)),
                      ),
                    ),
                  ],
                ),
              ),
            ) */
          ],
        ),
      ),
    );
  }
}
