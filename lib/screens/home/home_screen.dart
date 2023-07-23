import 'package:cbt_mobile_application/constants/colors.dart';
import 'package:cbt_mobile_application/constants/ui_constant.dart';
import 'package:cbt_mobile_application/controllers/question_paper/question_paper_controller.dart';
import 'package:cbt_mobile_application/screens/home/upcoming_exam_card.dart';
import 'package:cbt_mobile_application/screens/profile/profile.dart';
import 'package:cbt_mobile_application/widgets/progress_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Home.dart';
import 'package:cbt_mobile_application/screens/view/view_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Widget> pages = const [Home(), ViewScreen(), Profile()];

  @override
  Widget build(BuildContext context) {
    final appbar = UiConstant.appBar();

    return Scaffold(
        appBar: _currentIndex == 0 ? appbar : null,
        backgroundColor: primaryColor,
        body: pages[_currentIndex],
        bottomNavigationBar: NavigationBarTheme(
          data: const NavigationBarThemeData(
              // indicatorColor: onboardingColorPage3,
              elevation: 10),
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
                      CupertinoIcons.square_stack_3d_up_fill,
                      color: Colors.black,
                    ),
                    icon: Icon(CupertinoIcons.square_stack_3d_up),
                    label: ""),
                NavigationDestination(
                    selectedIcon: Icon(
                      CupertinoIcons.person_alt,
                      color: Colors.black,
                    ),
                    icon: Icon(CupertinoIcons.person),
                    label: ""),
              ]),
        ));
  }
}
