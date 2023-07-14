import 'package:flutter/material.dart';
import 'package:loginsingup/reusable/reusable.dart';
import 'package:loginsingup/screens/signin_screen.dart';
import 'package:loginsingup/utils/colors_util.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SigninScreen()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("#01F9C6"),
          hexStringToColor("#008080"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.all(75.0),
          child: Container(
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  image: const AssetImage("assets/images/bin.jpg"),
                )),
          ),
        ),
      ),
    );
  }
}
