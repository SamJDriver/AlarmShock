import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AlarmListItem extends StatefulWidget {
  const AlarmListItem({super.key});

  @override
  State<AlarmListItem> createState() => _AlarmListItemState();
}

class _AlarmListItemState extends State<AlarmListItem> {

  DateTime alarmTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    print('width: $width');
    print('height: $height');

    return Container(
      height: height/5,
      width: width,
      child: Text(DateFormat('HH:mm a').format(alarmTime.toLocal())),
        // body: Text(DateFormat('HH:mm a').format(alarmTime.toLocal())),
      );
  }
}