import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:testflutter/screens/main_screen.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  static const String id = "onboard_screen";


  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  double scrollPosition = 0;
  final storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ]

    );
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (val){
              setState(() {
                scrollPosition = val.toDouble();
              });
          },
            children: [
              OnBoardPage(
                boardColumn: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("SHOP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Eagle'

                      ),),
                    SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/logo.png')
                    )
                  ],
                ),
              ),
              OnBoardPage(
                boardColumn: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("SHOP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Eagle'

                      ),),
                    SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/1.png')
                    )
                  ],
                ),
              ),


            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height:89,
              child: Column(
                children: [

                  DotsIndicator(dotsCount: 5,
                    position: scrollPosition,
                    decorator: const DotsDecorator(
                      activeColor: Colors.white,
                      color: Colors.white10,
                    ),
                  ),
                  TextButton(
                    child: const Text("SKIP TO APP >", style:
                    TextStyle(
                      color: Colors.white,
                      fontFamily: 'Eagle',
                      fontSize: 20,
                    ),
                    ),
                    onPressed: (){
                      storage.write('onboard', true);
                      Navigator.pushReplacementNamed(context, MainScreen.id);
                    },
                  ),

                  const SizedBox(height: 20,)
                ],
              ),
            )
          ),

        ],
      ),
    );
  }
}

class OnBoardPage extends StatelessWidget {
  final Column? boardColumn;
  const  OnBoardPage({Key? key, this.boardColumn}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.deepOrange,
          child: Center(child: boardColumn,),

        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)
              ),

              color: Color(0xFF333E45),
            ),


          ),
        ),


      ],

    );
  }
}

