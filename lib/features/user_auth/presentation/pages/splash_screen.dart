import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  static const String screenName = 'splash_screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 3), (){
      context.go('/home');

    });
    return const Scaffold(
      body: _ProgressView(),
      backgroundColor: Colors.black,
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      children: [
        SizedBox(height: 250),
        Image(image: AssetImage('resource/images/logoUnovels.png')),
        Text('Empezando... ',
            style: TextStyle(
                fontSize: 26, color: Color.fromARGB(255, 216, 192, 121))),
        SizedBox(height: 20),
        CircularProgressIndicator(
            strokeWidth: 3,
            backgroundColor: Color.fromARGB(255, 216, 192, 121)),
        SizedBox(height: 30),
      ],
    ));
  }
}

Widget circularProgressCustom(double progressValue) =>
    CircularProgressIndicator(
        value: progressValue, strokeWidth: 2, backgroundColor: Colors.red);
