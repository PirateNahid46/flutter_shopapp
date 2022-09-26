import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/firebase_service.dart';
import 'package:getwidget/getwidget.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  double scrollPosition = 0;
  FirebaseService firebaseService = FirebaseService();
  List bannerImages = [];


  @override
  void initState() {
    getBanner();
    super.initState();
  }

  getBanner(){
    firebaseService.homeBanner
        .get()
        .then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        setState(() {
          bannerImages.add(doc["image"]);
        });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: bannerImages.isEmpty?GFShimmer(
                showShimmerEffect: true,
                duration: const Duration(seconds: 10),
                mainColor: Colors.grey.shade500,
                child: Container(
                  color: Colors.grey.shade400,
                ),

              ) : PageView.builder(
                itemBuilder: (BuildContext context, int index){
                  return Image.network(bannerImages[index], fit: BoxFit.cover,);

                },
                itemCount: bannerImages.length,
                onPageChanged: (val){
                  setState(() {
                    scrollPosition = val.toDouble();
                  });
                },
              ),
            ),
          ),
        ),
        DotsIndicatorWidget(scrollPosition: scrollPosition)
      ],
    );
  }
}

class DotsIndicatorWidget extends StatelessWidget {
  const DotsIndicatorWidget({
    Key? key,
    required this.scrollPosition,
  }) : super(key: key);

  final double scrollPosition;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10.0,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DotsIndicator(
              position: scrollPosition,
                dotsCount: 3,
            decorator: DotsDecorator(
              color: Colors.grey,
              activeColor: Colors.green,
              spacing: const EdgeInsets.all(2),
              size: const Size.square(5),
              activeSize: const Size(12,6),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              )

            ),),
          ),
        ],
      ),
    );
  }
}
