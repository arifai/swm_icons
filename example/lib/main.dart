import 'package:flutter/material.dart';
import 'package:swm_icons/swm_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SWM Icons example app')),
        body: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SWMIcon(SWMIcons.air, size: 40),
              SWMIcon(SWMIcons.alarm, style: SWMIconStyles.broken),
              SWMIcon(
                SWMIcons.wifi,
                style: SWMIconStyles.curved,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
