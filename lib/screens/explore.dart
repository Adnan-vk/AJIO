import 'package:ajio/screens/widgets.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

int exp =0;
final expcarousel =[
  'assets/explore1.PNG',
  'assets/explore2.PNG',
  'assets/explore3.PNG',
  'assets/explore5.PNG',
];

final expsl =[
  'assets/expsl1.PNG',
  'assets/expsl2.PNG',
  'assets/expsl3.PNG',
];

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/explore4.PNG'),
            CarouselSlider.builder(
                itemCount: expcarousel.length,
                itemBuilder: (context, index, realIndex) {
                  final imagePath = expcarousel[index];
                  return buildImage(imagePath, index);
                },
                options: CarouselOptions(
                  height: 250,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      exp = index;
                    });
                  },
                )),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/cont1.jpg',height: 170,),
                        Container(
                          child: Column(
                            children: [
                              Image.asset('assets/cont2.jpg',height: 82,),
                              Image.asset('assets/cont3.jpg',height: 82,),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/cont4.jpg',height: 80,),
                            Image.asset('assets/cont5.jpg',height: 80,),
                          ],
                        ),
                        Image.asset('assets/cont6.jpg',height: 165,)
                      ],
                    ),
                    Row(
                        children: [
                          Image.asset('assets/cont7.jpg',height: 170,),
                          Container(
                            child: Column(
                              children: [
                                Image.asset('assets/cont8.jpg',height: 82,),
                                Image.asset('assets/cont9.jpg',height: 82,),
                              ],
                            ),
                          )
                        ],
                      ),
                      CarouselSlider.builder(
                      itemCount: expsl.length,
                      itemBuilder: (context, index, realIndex) {
                      final imagePath = expsl[index];
                       return buildImage(imagePath, index);
                      },
                      options: CarouselOptions(
                      height: 110,
                      autoPlay: true,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                      setState(() {
                       exp = index;
                });
                  },
                )),
                  ],
                )
          ],
        ),
      )
    );
  }
  Widget buildImage(String imagepath, int index) => Container(
        width: double.infinity,
        color: Colors.grey,
        child: Image.asset(
          imagepath,
          fit: BoxFit.fill,
        ),
      );
}