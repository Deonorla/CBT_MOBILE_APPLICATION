import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:cbt_mobile_application/constants/ui_constant.dart';
import 'package:cbt_mobile_application/controllers/question_paper/question_paper_controller.dart';
import 'package:cbt_mobile_application/screens/home/upcoming_exam_card.dart';
import 'package:cbt_mobile_application/widgets/progress_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Widget> pages = const [
    Home(),
    Text("View"),
    Text("View"),
  ];

  @override
  Widget build(BuildContext context) {
    final appbar = UiConstant.appBar();

    return Scaffold(
        appBar: appbar,
        backgroundColor: primaryColor,
        body: pages[_currentIndex],
        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(
              // indicatorColor: Colors.white,
              ),
          child: NavigationBar(
              selectedIndex: _currentIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              destinations: const [
                NavigationDestination(
                    selectedIcon: Icon(
                      CupertinoIcons.house_fill,
                      color: Colors.black,
                    ),
                    icon: Icon(CupertinoIcons.home),
                    label: ""),
                NavigationDestination(
                    selectedIcon: Icon(
                      CupertinoIcons.folder_fill,
                      color: Colors.black,
                    ),
                    icon: Icon(CupertinoIcons.folder_badge_plus),
                    label: ""),
              ]),
        ));
  }
}
