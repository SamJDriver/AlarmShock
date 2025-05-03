import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alarm List'),
      ),
      body: const Center(
        child: Text('Schedule Page'),
      ),
    );
  }
}