import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {

  final List<String> _categoryLabel = <String>[
    'Picked For You',
    'Fashion',
    'Mobiles',
    'Watches',
    'Groceries',
    'Pants',
    'Shirts'

  ];

  int _index = 0;
  @override
  Widget build(BuildContext context) {



    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Text("Categories",style: TextStyle(fontFamily: 'Poppins'),),
          SizedBox(
            height: 40,
            child: Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: _categoryLabel.length,
                      itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: ActionChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)
                        ),
                        backgroundColor: _index == index? Colors.blue:Colors.grey,
                        onPressed: (){
                          setState(() {
                            _index = index;
                          });
                        },
                        label: Text(_categoryLabel[index],style: const TextStyle(fontFamily: 'Poppins'),),
                      ),
                    );

                  }),
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_downward_outlined)),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
