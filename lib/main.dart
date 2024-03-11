import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_with_restapi/view/quiz_ui.dart';

void main() {
  runApp(const QuizPage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: FutureBuilder<dynamic>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
                child: ListTile(
                  leading: CircleAvatar(child: Text(snapshot.data!.values.elementAt(1).toString()),),
              title: Text(snapshot.data!.values.elementAt(2).toString()),
              subtitle: Text(snapshot.data!.values.elementAt(4).toString()),
            ));
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )),
    );
  }
}



getData() async {
  Dio dio = Dio();

  Response response =
      await dio.get("https://jsonplaceholder.typicode.com/users/1");

  if (response.statusCode == 200) {
    return response.data;
  } else {
    return "No Data";
  }
}
