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
      visible: false,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 250),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 190,
                width: 290,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 51, 48, 48),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 15),
                      child: Text(
                        "Game Over!!!",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, right: 15),
                      child: Text(
                        "Your highest score is 0.0",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 185, 176, 176)),
                      ),
                    ),
                    SizedBox(height: 30),
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
                                    "Restart",
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
                                Icons.close,
                                color: Colors.white,
                                size: 30,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
