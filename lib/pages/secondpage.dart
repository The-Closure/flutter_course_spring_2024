import 'package:flutter/material.dart';
import 'package:pageview_inkwell/main.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
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
            child: Image.asset('assets/images/second_image.jpg'),
          ),
          const Text(
            "Write List",
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
          const Text(
            "Magna esse velit eiusmod duis laborum\n \t\texercitation nostrud.",
            style: TextStyle(color: Colors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                ),
              ),
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                    color: Colors.grey, shape: BoxShape.circle),
              )
            ],
          ),
          InkWell(
            onTap: () {
              controller.nextPage(
                  duration: const Duration(seconds: 2),
                  curve: Curves.easeInCirc);
            },
            child: Container(
              width: 317,
              height: 55,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 183, 213, 237),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                  child: Text(
                "Next",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          )
        ],
      ),
    );
  }
}
