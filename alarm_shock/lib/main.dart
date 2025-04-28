import 'package:flutter/material.dart';
import 'package:alarm_shock/pages/alarm list page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const MyHomePage(title: 'Alarm ShockShock'),
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
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.amber,
        title: Text(widget.title),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) => setState(() => _tabIndex = value), 
        selectedIndex: _tabIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.alarm), label: 'Alarms'),
          NavigationDestination(icon: Icon(Icons.calendar_month), label: 'Schedule'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ])
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.alarm),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
