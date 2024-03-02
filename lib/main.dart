import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: const [FlutterLogo(), Text("data"), FlutterLogo()],
          title: const Text("Hello Wolrd"),
          leading: const FlutterLogo(),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child:Center(child: Text("Hello",s)),
          color: Colors.red,
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
