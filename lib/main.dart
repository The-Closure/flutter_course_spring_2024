import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_with_restapi/model/animal_model.dart';
import 'package:quiz_app_with_restapi/service/aniaml_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [GetAllAnimal()],
      ),
    );
  }
}

class GetAllAnimal extends StatelessWidget {
  const GetAllAnimal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
          onTap: () async {
            bool status =
                await createNewAnimal(AnimalModel(id: "0", name: "Mouse"));
            if (status) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Succes"),
                backgroundColor: Colors.green,
              ));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Error"),
                backgroundColor: Colors.red,
              ));
            }
          },
          child: FlutterLogo()),
      body: FutureBuilder(
        future: getAllAniaml(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data![index].name),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
