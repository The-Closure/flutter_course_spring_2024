import 'package:flutter/material.dart';
import 'package:pageview_inkwell/pages/firstpage.dart';
import 'package:pageview_inkwell/pages/secondpage.dart';
import 'package:pageview_inkwell/pages/thirdpage.dart';

void main() {
  runApp(const HomePage());
}


// class A {

// }

// A a = A();

PageController controller = PageController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: controller,
          children: [
            FirstPage(),
            SecondPage(),
            ThirdPage(),
          ],
        ),
      ),
    );
  }
}
