import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  static const String id = "onboard_screen";

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  double scrollPosition = 0;
  @override
  Widget build(BuildContext context) {
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
                        child: Image.asset('assets/images/1.png')
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
                    fontFamily: 'Eagle',
                    fontSize: 20,
                  ),
                  ),
                  onPressed: (){},
                ),
                const SizedBox(height: 20,)
              ],
            ),
          )
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
    return Container(
      color: Colors.blueGrey,
      child: Center(child: boardColumn,),
    );
  }
}

