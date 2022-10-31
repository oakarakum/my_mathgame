// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';

import 'package:fluttericon/typicons_icons.dart';

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
                    splashColor: Colors.grey,
                    onTap: () {},
                    child: Row(children: [
                      Icon(
                        Icons.light_mode,
                        color: Colors.yellow,
                      ),
                      Text("Lights On",
                          style: TextStyle(color: Colors.white, fontSize: 15))
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
                            Icons.star_border,
                            color: Colors.yellow,
                            size: 20,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 200,
                      width: 200,
                      child: Image.asset(
                        "assets/dashboard_assets/eins.jpeg",
                        color: Colors.black,
                        fit: BoxFit.contain,
                      )),
                  Text(
                    "Math \n\n\nGames",
                    style: TextStyle(color: Color(0xffC94f7C)),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
