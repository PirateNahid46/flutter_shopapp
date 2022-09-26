import 'package:flutter/material.dart';
import 'package:testflutter/widgets/banner_widget.dart';
import 'package:testflutter/widgets/brand_highlights.dart';
import 'package:testflutter/widgets/category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(45),
        child: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text("Shop App", style: TextStyle(
          fontFamily: 'Eagle',
        ),),
        actions: [
          IconButton(
              onPressed: (){

              },
              icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),),
      body: ListView(
          children: const [
            SearchWidget(),
            BannerWidget(),
            BrandHighlights(),
            CategoryWidget()

          ],

        ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        SizedBox(
          height: 55,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: const TextField(
                style: TextStyle(
                  fontFamily: 'Poppins'
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xEEEEEEFF),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(8, 3, 8, 5),
                    hintText: "Search",
                    hintStyle: TextStyle(fontFamily: 'Poppins'),
                    prefixIcon: Icon(Icons.search, size: 23,)



                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              Row(children: const [
                Icon(Icons.info_outline_rounded),
                Text('100% Genuine',style: TextStyle(fontFamily: 'Poppins'),)
              ],),
              Row(children: const [
                Icon(Icons.info_outline_rounded),
                Text('7 days return',style: TextStyle(fontFamily: 'Poppins'),)
              ],),
              ],
          ),
        )

      ],
    );
  }
}
