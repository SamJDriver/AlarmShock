import 'package:flutter/material.dart';

class Alarm extends StatelessWidget {
  Alarm({super.key});

  DateTime alarmTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Icon(Icons.alarm),
      ),
    );
  }
}