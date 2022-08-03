import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyResume extends StatelessWidget {
  const MyResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Color(0xff262626),
      // padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            alignment: Alignment.center,
            // color: Colors.red,
            child: Text(
              "My Resume",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color(0xffFF8C05),
                  fontSize: 30),
            ),
          ),
          Container(
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
                      Text("Experience",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 118, 5),
                              fontWeight: FontWeight.w900,
                              letterSpacing: 5,
                              fontSize: 24)),
                      SizedBox(
                        height: 32,
                      ),
                      Text("More than 6 years experience as a ",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              // letterSpacing: 5,
                              color: Colors.white,
                              fontSize: 40)),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Designer",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              letterSpacing: 5,
                              color: Color.fromARGB(255, 255, 118, 5),
                              fontSize: 48))
                    ],
                  ),
                )),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(32),
                    child: Column(
                      children: [
                        TimelineTile(
                          isFirst: true,
                          indicatorStyle: IndicatorStyle(color: Colors.white),
                          afterLineStyle: LineStyle(
                            color: Colors.white,
                          ),
                        ),
                        TimelineTile(
                          indicatorStyle: IndicatorStyle(color: Colors.white),
                          afterLineStyle: LineStyle(
                            color: Colors.white,
                          ),
                          beforeLineStyle: LineStyle(
                            color: Colors.white,
                          ),
                        ),
                        TimelineTile(
                          indicatorStyle: IndicatorStyle(color: Colors.white),
                          afterLineStyle: LineStyle(
                            color: Colors.white,
                          ),
                          beforeLineStyle: LineStyle(
                            color: Colors.white,
                          ),
                        ),
                        TimelineTile(
                          indicatorStyle: IndicatorStyle(color: Colors.white),
                          afterLineStyle: LineStyle(
                            color: Colors.white,
                          ),
                          beforeLineStyle: LineStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
