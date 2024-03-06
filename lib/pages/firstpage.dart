import 'package:flutter/material.dart';
import 'package:pageview_inkwell/main.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Skip",
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset('assets/images/first_image.jpg'),
          ),
          Text(
            "Write List",
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
          Text(
            "Magna esse velit eiusmod duis laborum\n \t\texercitation nostrud.",
            style: TextStyle(color: Colors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                ),
              ),
              Container(
                width: 10,
                height: 10,
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
              )
            ],
          ),
          InkWell(
            onTap: () {
              controller.nextPage(
                  duration: Duration(
                    // milliseconds: 200,
                    seconds: 2
                  ),
                  curve: Curves.slowMiddle);
            },
            child: Container(
              child: Center(
                  child: Text(
                "Next",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
              width: 317,
              height: 55,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 183, 213, 237),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
