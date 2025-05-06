import 'package:alarm_shock/components/alarm-switch.dart';
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

    return Container(
      height: height/6,
      width: width,
      foregroundDecoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Color.fromARGB(34, 99, 99, 99),
      ),
      child: 
        Scaffold(
          // backgroundColor: Color.fromARGB(255, 30, 30, 30),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                  child: Text(
                    DateFormat('HH:mm a').format(alarmTime.toLocal()),
                    style: TextStyle(fontSize: 36)
                  )
                )
              ),
              // FittedBox(
              //   fit: BoxFit.fill,
              //   child: Container (
              //     alignment: Alignment.center,
              //     child: Text(
              //       DateFormat('HH:mm a').format(alarmTime.toLocal()),
              //       style: TextStyle(fontSize: 36),
              //     ),
              //   )
              // ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                child: AlarmSwitch()
              ),
            ],
          ),
        )
        
        // body: Text(DateFormat('HH:mm a').format(alarmTime.toLocal())),
      );
  }


    void alarmSwitchClicked(bool value){
    
  }

}