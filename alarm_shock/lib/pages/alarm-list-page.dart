import 'package:alarm_shock/components/alarm-switch.dart';
import 'package:alarm_shock/components/alarm-list-item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // for date format

class AlarmListPage extends StatefulWidget {
  const AlarmListPage({super.key});

  @override
  State<AlarmListPage> createState() => _AlarmListPageState();
}

class _AlarmListPageState extends State<AlarmListPage> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  List<String> _whaaaat = [
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _whaaaat.length,
        itemBuilder: (context, index, animation) {
          return buildItem(_whaaaat[index], animation); // Build each list item
        },
      ),      
      floatingActionButton: FloatingActionButton(
        onPressed: _onAddAlarmPressed,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildItem(String item, Animation<double> animation) {
    print('item: $item');
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: Text(item),
      ),
    );
  }

  void _onAddAlarmPressed() {
    final newItem = 'Item ${_whaaaat.length + 1}'; // Create a new item

    // Update the underlying data list
    setState(() {
      _whaaaat.add(newItem);
    });

   // Insert the new item into the AnimatedList
   _listKey.currentState!.insertItem(_whaaaat.length - 1);
  }

  void alarmSwitchClicked(bool value){
    
  }
}