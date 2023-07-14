import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:loginsingup/screens/home.dart';
import 'package:loginsingup/screens/level.dart';
import 'package:loginsingup/screens/message.dart';
import 'package:loginsingup/screens/truck.dart';
import 'package:loginsingup/utils/colors_util.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = const [
    Icon(
      Icons.home,
      color: Colors.black,
      size: 40,
    ),
    Icon(
      Icons.bar_chart,
      color: Colors.black,
      size: 40,
    ),
    Icon(
      Icons.message_rounded,
      color: Colors.black,
      size: 40,
    ),
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexStringToColor("#008080"),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 50.0,
        backgroundColor: hexStringToColor("#008080"),
        animationDuration: const Duration(milliseconds: 200),
        // animationCurve: ,
      ),
      body: Container(
          color: Colors.teal.shade500,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const Intro();
        break;
      case 1:
        widget = Level();
        break;
      case 2:
        widget = const Message();
      default:
        widget = const Intro();
        break;
    }
    return widget;
  }
}
