import 'package:ajio/screens/widgets.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}
final cardimage =[
  'assets/category img/cat6.jpg',
  'assets/category img/cat7.jpg',
  'assets/category img/cat5.jpg',
  'assets/category img/cat4.jpg',
  'assets/category img/cat3.jpg',
  'assets/category img/cat1.jpg',
  'assets/category img/cat8.jpg',
  'assets/category img/cat1.jpg',
  'assets/category img/cat1.jpg',
  'assets/category img/cat1.jpg'

];
final cardname = [
  "Men",
  "Women",
  "Kids",
  "Jewellery",
  "Home & lifestyle",
  "Beauty by Tira",
  "Accessories",
  "Lingerie",
  "Gifting Guide",
  "Brand Verse"
];


class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: categoryAppbar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: cardname.length,
              itemBuilder: (context, index) {
                return Card( 
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            cardname[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Image(
                          image: AssetImage(cardimage[index]),
                          width: 1,
                          height: 1,
                        )
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Color.fromARGB(255, 240, 235, 235),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 6 / 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
          ),
          Image(
            image: AssetImage('assets/ajio luxe.jpg'),
          ),
        ],
      ),
    );
  }
}
          
   