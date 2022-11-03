// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class quickCalcTutorial extends StatelessWidget {
  const quickCalcTutorial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          enableDrag: true,
          context: context,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          backgroundColor: Color.fromARGB(255, 56, 51, 51),
          builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                SizedBox(
                  child: Text("Calculator",
                      style:
                          GoogleFonts.inter(color: Colors.white, fontSize: 25)),
                ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/gif/quick-calculation-intro.gif",
                          ))),
                ),
                SizedBox(height: 10),
                Text(
                    "You need to solve given equation \n                    correctly.",
                    style: GoogleFonts.inter(color: Colors.grey, fontSize: 15)),
                SizedBox(height: 12),
                Text(
                  "1.0 for correct answer",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(height: 5),
                Text(
                  "-1.0 for wrong answer",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.orange),
                    child: Text("GOT IT!"))
              ],
            );
          },
        );
      },
      child: SizedBox(
        width: 110,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Elusive.info_circled,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(width: 10),
            Text(
              "Tutorial",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
