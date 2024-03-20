import 'package:flutter/material.dart';
import 'package:stateful_set_state_and_widgets/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    print('create state');
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    print('initState');
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose method');
  }

  @override
  Widget build(BuildContext context) {
    print('build method');
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: Center(
          child: Image.asset('assets/images/Logo.png'),
        ),
      ),
    );
  }
}
