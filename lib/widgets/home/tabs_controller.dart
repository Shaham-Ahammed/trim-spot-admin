import 'package:flutter/material.dart';
import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/font.dart';
import 'package:trim_spot_admin_side/utils/home/tabs.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';

class TabsOfHomeScreen extends StatelessWidget {
  const TabsOfHomeScreen({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: false,
      indicatorWeight: 4,
      indicatorColor: cyanColor,
      indicatorPadding: EdgeInsets.only(top: mediaqueryHeight(0.02, context)),
      labelStyle: TextStyle(
          fontFamily: cabinCondensed,
          fontSize: mediaqueryHeight(0.026, context),
          fontWeight: FontWeight.normal,
          color: cyanColor),
      unselectedLabelStyle: TextStyle(
          fontFamily: cabinCondensed,
          fontSize: mediaqueryHeight(0.026, context),
          fontWeight: FontWeight.normal,
          color: whiteColor),
      tabs: tabHeadings,
      controller: tabController,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }
}