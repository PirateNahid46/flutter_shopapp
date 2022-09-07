import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testflutter/screens/on_boarding_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: SplashScreen.id,
    routes: {
      SplashScreen.id:(context)=> const SplashScreen(),
      OnBoardingScreen.id:(context)=> const OnBoardingScreen()
    },

  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = "splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}



class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Timer(const Duration(
      seconds: 3
    ), ()=>Navigator.pushReplacementNamed(context, OnBoardingScreen.id),);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,overlays: []);
    return const Scaffold(
      body: Center(
        child: Text("Shop App Splash.", style:
          TextStyle(
            fontFamily: 'Eagle'
          )),
      ),
    );
  }
}
