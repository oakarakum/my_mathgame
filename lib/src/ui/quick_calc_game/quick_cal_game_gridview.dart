// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridViewKeypad extends StatelessWidget {
  const GridViewKeypad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 26,
          mainAxisExtent: 80,
          mainAxisSpacing: 20),
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff00b686),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 3),
              child: Text(
                "1",
                style: GoogleFonts.allura(
                    fontWeight: FontWeight.w500,
                    fontSize: 65,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff00b686),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 3),
              child: Text(
                "2",
                style: GoogleFonts.allura(
                    fontWeight: FontWeight.w500,
                    fontSize: 65,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff00b686),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 3),
              child: Text(
                "3",
                style: GoogleFonts.allura(
                    fontWeight: FontWeight.w500,
                    fontSize: 65,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff00b686),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 3),
              child: Text(
                "4",
                style: GoogleFonts.allura(
                    fontWeight: FontWeight.w500,
                    fontSize: 65,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff00b686),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 3),
              child: Text(
                "5",
                style: GoogleFonts.allura(
                    fontWeight: FontWeight.w500,
                    fontSize: 65,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff00b686),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 3),
              child: Text(
                "6",
                style: GoogleFonts.allura(
                    fontWeight: FontWeight.w500,
                    fontSize: 65,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff00b686),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 3),
              child: Text(
                "7",
                style: GoogleFonts.allura(
                    fontWeight: FontWeight.w500,
                    fontSize: 65,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff00b686),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 3),
              child: Text(
                "8",
                style: GoogleFonts.allura(
                    fontWeight: FontWeight.w500,
                    fontSize: 65,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff00b686),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 3),
              child: Text(
                "9",
                style: GoogleFonts.allura(
                    fontWeight: FontWeight.w500,
                    fontSize: 65,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff00b686),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 3),
              child: Text(
                "C",
                style: GoogleFonts.allura(
                    fontWeight: FontWeight.w500,
                    fontSize: 65,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xff00b686),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 3),
              child: Text(
                "0",
                style: GoogleFonts.allura(
                    fontWeight: FontWeight.w500,
                    fontSize: 65,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff00b686),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Icon(
                Icons.backspace_sharp,
                color: Colors.white,
                size: 50,
              ))),
        ),
      ],
    );
  }
}
