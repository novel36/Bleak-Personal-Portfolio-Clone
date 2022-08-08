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
      height: 500,
      color: Color(0xff262626),
      // padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
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
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
