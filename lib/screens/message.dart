import 'package:flutter/material.dart';
import 'package:loginsingup/utils/colors_util.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(fontSize: 25.0),
        ),
        backgroundColor: hexStringToColor("#01F9C6"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("#01F9C6"),
          hexStringToColor("#008080"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Text('Notifications will be displayed here.',
              style: TextStyle(
                fontSize: 20,
              )),
        ),
      ),
    );
  }
}
