import 'package:buttons_navigation_hero/views/deatails_card_page.dart';
import 'package:buttons_navigation_hero/views/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // shape: const RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(
                //     Radius.circular(10),
                //   ),
                // ),
                // shape: const BeveledRectangleBorder(
                //   borderRadius: BorderRadius.all(
                //     Radius.circular(50),
                //   ),
                // ),
                side: const BorderSide(
                  color: Colors.brown,
                  width: 2,
                ),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                shadowColor: Colors.red,
                surfaceTintColor: Colors.blue,
                elevation: 10,
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
              ),
              onHover: (value) {
                print(value);
              },
              onLongPress: () {
                print("on long press");
              },
              onPressed: () {
                print('hello');
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: Ma,
                children: [
                  Icon(Icons.abc_outlined),
                  Text("Elevated Button"),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Text Button"),
            ),
            OutlinedButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(
                //   builder: (context) {
                //     return const SecondPage();
                //   },
                // ));
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return const SecondPage();
                  },
                ));
              },
              child: const Text("Go To Second Page"),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Text("FAB"),
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              label: const Text("FAB"),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
