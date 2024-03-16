import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return const ListTile(
            title: Text("Hello Flutter"),
            leading: FlutterLogo(),
            trailing: FlutterLogo(),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          // print(index);
          return const Divider();
        },
        itemCount: 10,
      ),
    );
  }
}
