import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF212121),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 112, right: 112, top: 40, bottom: 64),
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
                        style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
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
              Container(
                height: 400,
                color: Color(0xff262626),
                padding: EdgeInsets.all(32),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "I AM BLEAK PEAKER",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 5,
                                  fontSize: 25),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Graphic Designer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.all(16)),
                              onPressed: () {},
                              child: Text(
                                "Contact Me",
                                style: TextStyle(fontSize: 16),
                              ))
                        ],
                      ),
                      Transform.rotate(
                        alignment: Alignment.center,
                        angle: pi / 4,
                        origin: Offset(0, 0),
                        child: Container(
                          margin: EdgeInsets.only(right: 64, top: 40),
                          decoration: BoxDecoration(
                              // color: Colors.grey,

                              image: DecorationImage(
                                  image: AssetImage("assets/intro-image.jpg"))),
                          width: 200,
                          height: 200,
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: 64,
              ),
              Container(
                height: 400,
                padding: EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: Color(0xff262626),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "About Me",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 5,
                                    fontSize: 25),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "I am a Graphic Designer",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut doloremque ratione perferendis possimus voluptatibus distinctio autem expedita qui unde modi impedit officia illum praesentium amet, vero quos natus veritatis totam!",
                              style: TextStyle(
                                  fontSize: 16, overflow: TextOverflow.fade),
                            )
                          ],
                        ),
                      ),
                      Transform.rotate(
                        angle: pi / 4,
                        origin: Offset(0, 0),
                        child: Container(
                          margin: EdgeInsets.only(right: 32, left: 32),
                          color: Colors.grey,
                          width: 150,
                          height: 150,
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
