// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class QuickCalcPopupGameOver extends StatefulWidget {
  const QuickCalcPopupGameOver({super.key});

  @override
  State<QuickCalcPopupGameOver> createState() => _QuickCalcPopupGameOverState();
}

class _QuickCalcPopupGameOverState extends State<QuickCalcPopupGameOver> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
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
                child: Text(
                  "Game Over!!!",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Your highest score is 0.0",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 185, 176, 176)),
              ),
              SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 130,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(5, 40),
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white),
                      child: Text(
                        "Restart",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(30, 40),
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white),
                    child: Icon(Icons.close),
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
