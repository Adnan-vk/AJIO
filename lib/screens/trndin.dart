import 'package:ajio/screens/widgets.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class trnd extends StatefulWidget {
  const trnd({super.key});

  @override
  State<trnd> createState() => _trndState();
}
int trndindex = 0;
final trndcar =[
  'assets/trnd2.jpg',
  'assets/trnd3.jpg',
  'assets/trnd5.jpg',
];

class _trndState extends State<trnd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset('assets/trnd1.jpg'),
            CarouselSlider.builder(
              itemCount: trndcar.length, 
              itemBuilder: (context, index, realIndex) {
                final imagepath = trndcar[index];
                return buildImage(imagepath, index);
              }, 
              options: CarouselOptions(
                height: 450,
                autoPlay: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    trndindex = index;
                  });
                },
              )),
              Image.asset('assets/trnd12.jpg'),
              Image.asset('assets/trnd7.jpg'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/trnd4.jpg',height: 280,),
                    Image.asset('assets/trnd8.jpg',height: 280,),
                    Image.asset('assets/trnd9.jpg',height: 280,),
                  ],
                ),
              ),
              Image.asset('assets/trnd13.jpg'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/trnd14.jpg',height: 280,),
                    Image.asset('assets/trnd15.jpg',height: 280,),
                  ],
                ),
              ),
              Image.asset('assets/trnd6.jpg'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/trnd10.jpg',height: 280,),
                    Image.asset('assets/trnd11.jpg',height: 280,),
                    SizedBox(width: 5,),
                    Image.asset('assets/trnd17.jpg',height: 270,),
                    SizedBox(width: 10,),
                    Image.asset('assets/trnd18.jpg',height: 270,),
                  ],
                ),
              ),
              Image.asset('assets/trnd16.jpg')
          ],
        ),
      ),
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