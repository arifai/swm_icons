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
  final List<SWMIcons> _icons = SWMIcons.values;
  final ScrollController _gridController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _gridController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('SWM Icons example app'),
          centerTitle: true,
        ),
        body: GridView.builder(
          controller: _gridController,
          itemCount: _icons.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
          ),
          itemBuilder: (_, i) {
            return SWMIcon(_icons[i], style: SWMIconStyles.broken);
          },
        ),
      ),
    );
  }
}
