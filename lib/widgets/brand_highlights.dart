import 'package:flutter/material.dart';
import 'package:testflutter/widgets/banner_widget.dart';

class BrandHighlights extends StatefulWidget {
  const BrandHighlights({Key? key}) : super(key: key);

  @override
  State<BrandHighlights> createState() => _BrandHighlightsState();
}

class _BrandHighlightsState extends State<BrandHighlights> {
  double scrollPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(

        children:[
          const Padding(
          padding: EdgeInsets.all(4.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('Brand Highlights', style: TextStyle(fontFamily: 'Poppins'),),
          ),
        ),
          Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: PageView(
              onPageChanged: (val){
                setState(() {
                  scrollPosition = val.toDouble();
                });
              },
              children: [
                Row(
                  children: [
                    Expanded(flex: 5,
                        child:Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  height: 100, color: Colors.blue,
                                  child: const Center(child: Text('Youtube Ad',style: TextStyle(fontFamily: 'Poppins'),)),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        height: 50,
                                        color: Colors.red,
                                        child: const Center(child: Text("Ad", style: TextStyle(fontFamily: 'Poppins'),),),
                                      ),
                                    ),
                                  ),),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Container(
                                          height: 50,
                                          color: Colors.red,
                                          child: const Center(child: Text("Ad", style: TextStyle(fontFamily: 'Poppins'),),),
                                        ),
                                      )
                                  ),),
                              ],
                            )
                          ],
                        )
                    ),
                    Expanded(flex:2,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              height: 160,
                              color: Colors.amber,
                              child: const Center(child: Text("Ad", style: TextStyle(fontFamily: 'Poppins'),),),
                            ),
                          ),
                        ))

                  ],
                ),
                Row(
                  children: [
                    Expanded(flex: 5,
                        child:Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  height: 100, color: Colors.blue,
                                  child: const Center(child: Text('Youtube Ad',style: TextStyle(fontFamily: 'Poppins'),)),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        height: 50,
                                        color: Colors.red,
                                        child: const Center(child: Text("Ad", style: TextStyle(fontFamily: 'Poppins'),),),
                                      ),
                                    ),
                                  ),),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Container(
                                          height: 50,
                                          color: Colors.red,
                                          child: const Center(child: Text("Ad", style: TextStyle(fontFamily: 'Poppins'),),),
                                        ),
                                      )
                                  ),),
                              ],
                            )
                          ],
                        )
                    ),
                    Expanded(flex:2,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              height: 160,
                              color: Colors.amber,
                              child: const Center(child: Text("Ad", style: TextStyle(fontFamily: 'Poppins'),),),
                            ),
                          ),
                        ))

                  ],
                ),
                Row(
                  children: [
                    Expanded(flex: 5,
                        child:Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Container(
                                  height: 100, color: Colors.blue,
                                  child: const Center(child: Text('Youtube Ad',style: TextStyle(fontFamily: 'Poppins'),)),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        height: 50,
                                        color: Colors.red,
                                        child: const Center(child: Text("Ad", style: TextStyle(fontFamily: 'Poppins'),),),
                                      ),
                                    ),
                                  ),),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Container(
                                          height: 50,
                                          color: Colors.red,
                                          child: const Center(child: Text("Ad", style: TextStyle(fontFamily: 'Poppins'),),),
                                        ),
                                      )
                                  ),),
                              ],
                            )
                          ],
                        )
                    ),
                    Expanded(flex:2,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              height: 160,
                              color: Colors.amber,
                              child: const Center(child: Text("Ad", style: TextStyle(fontFamily: 'Poppins'),),),
                            ),
                          ),
                        ))

                  ],
                ),
              ],

            ),
          ),
          DotsIndicatorWidget(scrollPosition: scrollPosition)


        ]
      ),
    );
  }
}
