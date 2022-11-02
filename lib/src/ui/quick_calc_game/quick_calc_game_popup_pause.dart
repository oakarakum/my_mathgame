// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class QuickCalcPopupPause extends StatefulWidget {
  const QuickCalcPopupPause({super.key});

  @override
  State<QuickCalcPopupPause> createState() => _QuickCalcPopupPauseState();
}

class _QuickCalcPopupPauseState extends State<QuickCalcPopupPause> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 51, 48, 48),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Calculator",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 20
                ),
                child: Text(
                  "Your current score is 0.0",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 185, 176, 176)),
                ),
              ),
              SizedBox(height: 28),
              Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.orange),
                                child: Center(
                                  child: Text(
                                    "Resume",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange),
                              child: Icon(
                                Icons.restart_alt,
                                color: Colors.white,
                                size: 30,
                              )),
                        ),
            ],
          ),
        ]),
      ),
    ));
  }
}
