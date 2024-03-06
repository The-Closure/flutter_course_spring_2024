import 'package:flutter/material.dart';
import 'package:pageview_inkwell/main.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                color: Colors.red,
                child: InkWell(
                  onTap: () {
                    controller.jumpToPage(1);
                  },
                  child: const FlutterLogo(
                    size: 100,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
              child: const Text("Flutter hello"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    alignment: Alignment.bottomLeft,
                    scale: 1 / 2,
                    opacity: 1,
                    fit: BoxFit.scaleDown,
                    image: AssetImage(
                      'assets/images/first_image.jpg',
                    ),
                  )),
              padding: const EdgeInsets.all(50),
              margin: const EdgeInsets.all(10),
              width: 400,
              height: 400,
              child: const Center(
                child: Text(
                  "Flutter hello",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Container(
              color: Colors.pink,
              width: 100,
              height: 100,
              child: const Text("Flutter hello"),
            ),
            const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.delete),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Flutter Hello"),
                    Text(
                        "Id est non eiusmod occaecat consectetur anim labore elit non."),
                  ],
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(Icons.save)
              ],
            ),
            const ListTile(
              iconColor: Colors.red,
              leading: Icon(Icons.delete),
              title: Text("Hello Flutter"),
              subtitle: Text("Quis tempor consectetur qui do dolor proident."),
              trailing: Icon(
                Icons.save,
                shadows: [
                  Shadow(color: Colors.grey, offset: Offset(10, 10)),
                ],
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
