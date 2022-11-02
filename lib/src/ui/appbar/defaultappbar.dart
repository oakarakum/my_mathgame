// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttericon/elusive_icons.dart';

class DefaultAppbar extends StatefulWidget {
  const DefaultAppbar({super.key});

  @override
  State<DefaultAppbar> createState() => _DefaultAppbarState();
}

class _DefaultAppbarState extends State<DefaultAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 65,
      backgroundColor: Color(0xff00b686),
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: SizedBox(
            height: 40,
            width: 60,
            child: Icon(
              Elusive.left,
              color: Colors.white,
              size: 30,
            )),
      ),
      actions: [
        Container(
          height: 30,
          width: 75,
          margin: EdgeInsets.only(right: 8),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            SvgPicture.asset(
              "assets/images/ic_trophy.svg",
            ),
            Text(
              "000",
              style: TextStyle(color: Colors.white, fontSize: 18),
            )
          ]),
        ),
      ],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(18))),
    );
  }
}
