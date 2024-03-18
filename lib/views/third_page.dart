import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Hero(
          tag: 'button',
          child: Text("Third Page"),
        ),
      ),
    );
  }
}
