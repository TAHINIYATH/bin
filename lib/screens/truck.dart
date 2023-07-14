import 'package:flutter/material.dart';

class Truck extends StatelessWidget {
  const Truck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: const [
          Text(
            'Allocation of Trucks',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 100,
          ),
          CircleAvatar(
            backgroundColor: Colors.white70,
            radius: 70,
            child: Icon(
              Icons.fire_truck_rounded,
              color: Colors.teal,
              size: 120,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            'Locate Trucks',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
