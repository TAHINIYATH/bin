import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:http/http.dart' as http;
import 'package:loginsingup/screens/message.dart';
import 'package:loginsingup/utils/colors_util.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Level extends StatefulWidget {
  @override
  _LevelState createState() => _LevelState();
}

class _LevelState extends State<Level> {
  double garbageLevel = 30;

  void fetchGarbageLevel() async {
    // Replace with your NodeMCU IP address
    final response =
        await http.get(Uri.parse('http://YOUR_NODEMCU_IP_ADDRESS/'));
    if (response.statusCode == 200) {
      setState(() {
        garbageLevel = double.parse(response.body);
      });
    }
    if (response.statusCode == 200) {
      setState(() {
        garbageLevel = double.parse(response.body);
        if (garbageLevel > 85) {
          // Show notification
          Message();
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchGarbageLevel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Garbage Level Monitor'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Garbage Level',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 300,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: CircularProgressIndicator(
                      value: garbageLevel / 100,
                      backgroundColor: hexStringToColor("#00FF00"),
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                      strokeWidth: 15,
                    ),
                  ),
                  Center(
                    child: Text(
                      '${garbageLevel.toStringAsFixed(1)}%',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
