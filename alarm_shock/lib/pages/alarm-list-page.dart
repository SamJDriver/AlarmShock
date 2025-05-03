import 'package:alarm_shock/components/alarm-switch.dart';
import 'package:alarm_shock/components/alarm.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // for date format

class AlarmListPage extends StatelessWidget {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  AlarmListPage({super.key});

  final List<Alarm> _items = [
    Alarm(),
    Alarm(),
    Alarm(),
    Alarm(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return buildItem(_items[index], animation); // Build each list item
        },
      ),      floatingActionButton: FloatingActionButton(onPressed: onAddAlarmPressed, child: const Icon(Icons.add),),
    );
  }

    Widget buildItem(Alarm item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: 
      Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(DateFormat('HH:mm a').format(item.alarmTime)),
            AlarmSwitch()
          ],
        )
      )
    );
  }

  void onAddAlarmPressed(){
  }

  void alarmSwitchClicked(bool value){
    
  }
}