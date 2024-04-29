import 'package:flutter/material.dart';
import 'package:trim_spot_admin_side/utils/colors.dart';
import 'package:trim_spot_admin_side/utils/home/tabs.dart';
import 'package:trim_spot_admin_side/utils/logo.dart';
import 'package:trim_spot_admin_side/utils/mediaquery.dart';
import 'package:trim_spot_admin_side/widgets/home/tabs_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: tabScreens.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appBarColor,
        title: AppLogo(
          size: mediaqueryHeight(0.04, context),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 20),
          child: TabsOfHomeScreen(tabController: tabController),
        ),
      ),
      body: TabBarView(controller: tabController, children: tabScreens),
    );
  }
}

