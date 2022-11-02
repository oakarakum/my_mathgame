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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Calculation",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        color: Colors.black,
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
              SizedBox(
                height: 15,
              ),
              Text(
                "Your current score is 0.0",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 185, 176, 176)),
              ),
              SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white),
                    child: Text(
                      "Resume",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(100, 30),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white),
                    child: Icon(Icons.replay),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
