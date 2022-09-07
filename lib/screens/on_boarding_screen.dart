import 'package:flutter/material.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  static const String id = "onboard_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (val){
      },
        children: [
          OnBoardPage(
            boardImage: Image.asset('assets/images/1.png'),
          ),
          OnBoardPage(
            boardImage: Image.asset('assets/images/1.png'),
          ),
          
        ],
      ),
    );
  }
}

class OnBoardPage extends StatelessWidget {
  final Image? boardImage;
  const OnBoardPage({Key? key,this.boardImage}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: boardImage,
    );
  }
}

