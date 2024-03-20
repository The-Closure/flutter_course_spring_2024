import 'package:flutter/material.dart';
import 'package:stateful_set_state_and_widgets/views/counter_screen.dart';
import 'package:stateful_set_state_and_widgets/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
