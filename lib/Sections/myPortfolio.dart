import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterresponsivenavigation/Sections/ResumePages/experiance.dart';
import 'package:flutterresponsivenavigation/Sections/ResumePages/skills.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyPortfolio extends StatefulWidget {
  MyPortfolio({Key? key}) : super(key: key);

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: Color(0xff262626),
      // padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            alignment: Alignment.bottomCenter,
            // color: Colors.red,
            child: Text(
              "My Portfolio",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color(0xffFF8C05),
                  fontSize: 30),
            ),
          ),
          SizedBox(height: 32),
          SizedBox(),
          Expanded(
            flex: 2,
            child: SizedBox(
              child: Column(
                children: [
                  ButtonsTabBar(
                    unselectedBackgroundColor: Colors.transparent,
                    controller: tabController,
                    backgroundColor: Colors.transparent,

                    // backgroundColor: Colors.red,
                    // unselectedBackgroundColor: Colors.grey[300],
                    unselectedLabelStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                    labelStyle: TextStyle(
                      color: Color(0xffFF8C05),
                      fontWeight: FontWeight.bold,
                    ),
                    tabs: [
                      Tab(
                        text: "Set All",
                      ),
                      Tab(
                        text: "Mobile Apps",
                      ),
                      Tab(
                        text: "Websites",
                      ),
                      Tab(
                        text: "Designs",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: <Widget>[
                        GridView.count(
                          crossAxisCount: 3,
                          childAspectRatio: 0.9,
                          crossAxisSpacing: 64,
                          mainAxisSpacing: 32,
                          children: [
                            Container(
                              //
                              height: 200,
                              color: Colors.red,
                            ),
                            Container(
                              height: 200,
                              color: Colors.yellow,
                            ),
                            Container(
                              height: 200,
                              color: Colors.pink,
                            ),
                            Container(
                              height: 200,
                              color: Colors.green,
                            ),
                            Container(
                              height: 200,
                              color: Colors.purple,
                            ),
                            Container(
                              height: 200,
                              color: Colors.amber,
                            )
                          ],
                        ),
                        Center(
                          child: Icon(Icons.directions_transit),
                        ),
                        Center(
                          child: Icon(Icons.directions_bike),
                        ),
                        Center(
                          child: Icon(Icons.directions_car),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
