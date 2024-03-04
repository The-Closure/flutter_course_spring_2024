import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              // boxShadow: const [
              //   BoxShadow(
              //     color: Colors.pink,
              //     offset: Offset(10, 10),
              //     blurRadius: 20,
              //     spreadRadius: 2,
              //   ),
              //   BoxShadow(
              //     color: Colors.green,
              //     offset: Offset(-10, -10),
              //     blurRadius: 20,
              //     spreadRadius: 2,
              //   ),
              // ],
              // gradient: const LinearGradient(
              //   begin: Alignment(0, 0),
              //   end: Alignment(-1, -1),
              //   colors: [
              //     Colors.teal,
              //     Colors.pink,
              //   ],
              // ),
              gradient: const RadialGradient(
                colors: [
                  Colors.red,
                  Colors.white,
                ],
              ),
              // border: const Border(
              //   top: BorderSide(
              //     color: Colors.red,
              //     width: 10,
              //   ),
              //   right: BorderSide(
              //     color: Colors.red,
              //     width: 10,
              //   ),
              // ),
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
              // color: Colors.white,
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(50),
            ),
            width: 500,
            height: 500,
            child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  color: Color(0xff8B321B5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlutterLogo(
                        size: 100,
                      ),
                      // Image.asset(
                      //     "https://www.google.com/images/branding/googlelogo/1x/googlelogo_light_color_272x92dp.png"),
                      FlutterLogo(
                        size: 100,
                      ),
                      Text(
                        "Skype",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontFamily: 'MadimiOne',
                          fontSize: 100,
                          color: Colors.blue,
                          backgroundColor: Colors.amber,
                          letterSpacing: 10,
                          shadows: [
                            Shadow(
                              color: Colors.grey,
                              offset: Offset(10, 10),
                              blurRadius: 10,
                            ),
                          ],
                          // decoration: TextDecoration.overline,
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(),
                            CircleAvatar(),
                            CircleAvatar()
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
    );
  }
}


