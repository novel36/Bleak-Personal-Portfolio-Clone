import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

Widget skillsPage() {
  return Container(
    height: 380,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Skills",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 118, 5),
                      fontWeight: FontWeight.w900,
                      letterSpacing: 5,
                      fontSize: 24)),
              SizedBox(
                height: 32,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: "With good \n",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        // letterSpacing: 5,
                        color: Colors.white,
                        fontSize: 40)),
                TextSpan(
                    text: "Personal and\n",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        letterSpacing: 5,
                        color: Color.fromARGB(255, 255, 118, 5),
                        fontSize: 48)),
                TextSpan(
                    text: "Professional",
                    children: [
                      TextSpan(
                          text: " Skills",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              letterSpacing: 5,
                              color: Color.fromARGB(255, 255, 118, 5),
                              fontSize: 48))
                    ],
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        // letterSpacing: 5,
                        color: Colors.white,
                        fontSize: 40))
              ])),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        )),
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
      ],
    ),
  );
}
