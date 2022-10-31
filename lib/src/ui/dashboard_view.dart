// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/fontelico_icons.dart';

import 'package:fluttericon/typicons_icons.dart';
import 'package:google_fonts/google_fonts.dart';

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
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2, color: Color(0xffC94f7C))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 200,
                        width: 150,
                        child: Image.asset(
                          "assets/dashboard_assets/eins.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text("Math\n\n        Games",
                          style: GoogleFonts.aclonica(
                              color: Color(0xffC94f7C), fontSize: 25)
                          //TextStyle(color: Color(0xffC94f7C), fontSize: 25),
                          ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
