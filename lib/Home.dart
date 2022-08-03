import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterresponsivenavigation/Sections/aboutMe.dart';
import 'package:flutterresponsivenavigation/Sections/profileIntro.dart';
import 'package:flutterresponsivenavigation/Sections/resume.dart';
import 'package:sticky_web_scroll/sticky_web_scroll.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Shader linearGradient = LinearGradient(
          colors: <Color>[Color(0xffd61a5e), Color(0xffff8c05)],
          begin: Alignment.centerRight,
          end: Alignment.bottomLeft)
      .createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 230.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      body: StickyWebScroll(
        stickyAppBar: Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text('Stick Web Scroll - by Flutter Devs Core',
                style: Theme.of(context).textTheme.headline4),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 112, right: 112, top: 40, bottom: 64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xff262626),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: TextButton(
                          style:
                              TextButton.styleFrom(padding: EdgeInsets.all(8)),
                          onPressed: () {
                            print("object");
                          },
                          child: Text(
                            "BLEAK",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(16)),
                              onPressed: () {},
                              child: Text(
                                "Home",
                                style: TextStyle(color: Colors.white),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(16)),
                              onPressed: () {},
                              child: Text(
                                "About",
                                style: TextStyle(color: Colors.white),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(16)),
                              onPressed: () {},
                              child: Text(
                                "Contact Us",
                                style: TextStyle(color: Colors.white),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(16)),
                              onPressed: () {},
                              child: Text(
                                "Services",
                                style: TextStyle(color: Colors.white),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(16)),
                              onPressed: () {},
                              child: Text(
                                "Portfolio",
                                style: TextStyle(color: Colors.white),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Profile(linearGradient: linearGradient),
                SizedBox(
                  height: 64,
                ),
                AboutMe(),
                SizedBox(
                  height: 64,
                ),
                MyResume()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
