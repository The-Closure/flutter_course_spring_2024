import 'package:flutter/material.dart';
import 'package:graphql_flame/data/graphql/graphql_service.dart';

void main() {
  // await initHiveForFlutter();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  final List<IconData> icons = [Icons.home, Icons.add, Icons.search];

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Text(snapshot.data.toString()),
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
        floatingActionButton: Flow(
          delegate: AwesomeDelegate(animationController),
          children: List.generate(
              icons.length,
              (index) => Padding(
                    padding: const EdgeInsets.all(20),
                    child: FloatingActionButton(
                      onPressed: () {
                        if (animationController.isCompleted) {
                          animationController.reverse();
                        } else {
                          animationController.forward();
                        }
                      },
                      child: Icon(icons[index]),
                    ),
                  )),
        ),
      ),
    );
  }
}

class AwesomeDelegate extends FlowDelegate {
  AwesomeDelegate(this.controller) : super(repaint: controller);

  final AnimationController controller;

  @override
  void paintChildren(FlowPaintingContext context) {
    for (var i = 0; i < context.childCount; i++) {


      Size size = context.getChildSize(i)!;
      context.paintChild(i,
          transform: Matrix4.translationValues(
              i * size.width * controller.value,
              i * size.width * controller.value,
              0));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return true;
  }
}

class A {
  String name;

  A({this.name = "Yazan"});
}




class B extends A {
  B(String name) : super(name: name);
}
