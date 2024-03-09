import 'package:builder_and_model/view/quiz_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuizPage(),
  ));
}

PageController controller = PageController();
bool isFirstTime = false;

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: PageView(
        controller: controller,
        children: [HomePage(), SecondPage()],
      )
          // body: PageView(
          //   controller: controller,
          //   children: [
          //     FirstPage(),
          //     Builder(builder: (context) {
          //       if (isFirstTime) {
          //         return HomePage();
          //       } else {
          //         return SecondPage();
          //       }
          //     })
          //   ],
          // ),
          ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          controller.nextPage(
              duration: Duration(seconds: 2), curve: Curves.linear);
        },
        child: Center(
            child: FlutterLogo(
          size: 100,
        )),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          isFirstTime = true;
          controller.previousPage(
              duration: Duration(seconds: 2), curve: Curves.linear);
        },
        child: Center(
          child: Icon(
            Icons.facebook,
            size: 100,
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 400) {
          return Container(
            color: Colors.red,
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Center(
                  child: Text("what is your name ?"),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 228, 225, 225)),
                width: 320,
                height: 60,
              ),
              SizedBox(
                height: 600,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Wrong Answer "),
                          behavior: SnackBarBehavior.floating,
                        ));
                      },
                      leading: CircleAvatar(
                        child: Text("1"),
                      ),
                      title: Text("Ahmad"),
                    ),
                    ListTile(
                      onTap: () {
                        controller.nextPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.bounceOut);
                      },
                      leading: CircleAvatar(
                        child: Text("2"),
                      ),
                      title: Text("Rami"),
                    ),
                    ListTile(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Wrong Answer "),
                          behavior: SnackBarBehavior.floating,
                        ));
                      },
                      leading: CircleAvatar(
                        child: Text("3"),
                      ),
                      title: Text("Noor"),
                    ),
                    ListTile(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("Wrong Answer "),
                          behavior: SnackBarBehavior.floating,
                        ));
                      },
                      leading: CircleAvatar(
                        child: Text("4"),
                      ),
                      title: Text("Yaser"),
                    ),
                  ],
                ),
              ),
            ],
          );
        }
      },
    ));
  }
}
