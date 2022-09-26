import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:testflutter/screens/main_screen.dart';
import 'package:testflutter/screens/on_boarding_screen.dart';
import 'firebase_options.dart';

void main() async{
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepOrange
    ),
    initialRoute: SplashScreen.id,
    routes: {
      SplashScreen.id:(context)=> const SplashScreen(),
      OnBoardingScreen.id:(context)=> const OnBoardingScreen(),
      MainScreen.id:(context)=> const MainScreen(),
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
  final store = GetStorage();
  
  @override
  void initState() {
    Timer(const Duration(
      seconds: 3
    ), (){
      bool? boarding = store.read('onboard');
      boarding == null ?Navigator.pushReplacementNamed(context, OnBoardingScreen.id):
      boarding == true?Navigator.pushReplacementNamed(context, MainScreen.id):
      Navigator.pushReplacementNamed(context, OnBoardingScreen.id);

    }
    );
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,overlays: []);
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Column(
            children: [
              Image.asset('assets/images/logo.png'),
              const Text('Shop App', style: TextStyle(
                fontFamily: 'Eagle',
                fontSize: 20
              ),)
            ],
          ),
        )
      ),
    );
  }
}
