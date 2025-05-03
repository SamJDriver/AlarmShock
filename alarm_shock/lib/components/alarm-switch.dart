import 'package:flutter/material.dart';


class AlarmSwitch extends StatefulWidget {
  const AlarmSwitch({super.key});

  @override
  State<AlarmSwitch> createState() => _AlarmSwitch();
}

class _AlarmSwitch extends State<AlarmSwitch>{
  bool switchStatus = false;
  
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: switchStatus,
      activeColor: Colors.green,
      onChanged: (bool value) => setState(() => switchStatus = value),
    );
  }
}