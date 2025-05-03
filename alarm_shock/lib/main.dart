import 'package:alarm_shock/pages/schedule%20page.dart' show SchedulePage;
import 'package:alarm_shock/pages/settings%20page.dart' show SettingsPage;
import 'package:flutter/material.dart';
import 'package:alarm_shock/pages/alarm-list-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alarm Shock',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(primary: const Color.fromARGB(255, 25, 160, 29), secondary: Color.fromARGB(194, 219, 219, 219)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Alarm Shock'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) => setState(() => _tabIndex = value), 
        selectedIndex: _tabIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.alarm), label: 'Alarms'),
          NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Schedule'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ]),
        body: <Widget>
        [
          AlarmListPage(),
          SchedulePage(),
          SettingsPage(),
        ][_tabIndex],
    );
  }
}
