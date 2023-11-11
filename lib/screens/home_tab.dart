import 'package:ajio/screens/widgets.dart';
// import 'package:ajio_app/widget/widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int activeindex = 0;
  final carouselImage = [
    'assets/scroll 1.PNG',
    'assets/scroll 2.PNG',
    'assets/scroll 3.PNG',
    'assets/scroll 4.PNG',
  ];

  final joinChange =[
    'assets/jion1.jpg',
    'assets/jion2.jpg',
  ];

  int shechange = 0;
  final shecarouse =[
   'assets/she1.png',
   'assets/she2.png',
   'assets/she3.png',
   'assets/she4.png',
   'assets/she5.png',
   'assets/she6.png',
  ];

  int dazlechange = 0;
  final dazlecarouse =[
    'assets/dazle img1.png',
    'assets/dazle img2.png',
    'assets/dazle-img3.png',
    'assets/dazle-img4.png',
    'assets/dazle img5.png',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:homeAppBar(),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal, child: textScroll()),
            SizedBox(
              height: 20,
            ),
            Container(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: Image(image: AssetImage('assets/hurry.png'))
                ),
              ),
            CarouselSlider.builder(
                itemCount: carouselImage.length,
                itemBuilder: (context, index, realIndex) {
                  final imagePath = carouselImage[index];
                  return buildImage(imagePath, index);
                },
                options: CarouselOptions(
                  height: 250,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeindex = index;
                    });
                  },
                )),
                SizedBox(
                  height: 10,
                ),
                Image.asset('assets/banner.jpg'),
                SingleChildScrollView(
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 2
                  ),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset('assets/rupay.jpg',height: 40,),
                      Image.asset('assets/sbi.jpg',height: 40,),
                      Image.asset('assets/sbi2.jpg',height: 40,width: 200,),
                      Image.asset('assets/AU.jpg',height: 38,width: 185,),
                      Image.asset('assets/IDFC.jpg',height: 40,width: 200,),
                      Image.asset('assets/bob.jpg',height: 45,width: 200,),
                      Image.asset('assets/yesbank.jpg',height: 40,),
                      Image.asset('assets/indubank.jpg',height: 40,),
                      Image.asset('assets/fi.jpg',height: 40,),
                      Image.asset('assets/mobikwik.jpg',height: 40,),
                      Image.asset('assets/pay.jpg',height: 40,),
                    ],
                  ),
                ),



                CarouselSlider.builder(
                itemCount: joinChange.length,
                itemBuilder: (context, index, realIndex) {
                  final imagePath = joinChange[index];
                  return buildImage(imagePath, index);
                },
                options: CarouselOptions(
                  height: 110,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeindex = index;
                    });
                  },
                )),
                Image.asset('assets/unheard.jpg'),
                Image.asset('assets/unheard02.jpg'),
                Image.asset('assets/deals.jpg'),

                CarouselSlider.builder(
                itemCount: shecarouse.length,
                itemBuilder: (context, index, realIndex) {
                  final imagePath = shecarouse[index];
                  return buildImage(imagePath, index);
                },
                options: CarouselOptions(
                  // height: 110,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      shechange = index;
                    });
                  },
                )),
                Image.asset('assets/dazling.jpg'),

                CarouselSlider.builder(
                itemCount: dazlecarouse.length,
                itemBuilder: (context, index, realIndex) {
                  final imagePath = dazlecarouse[index];
                  return buildImage(imagePath, index);
                },
                options: CarouselOptions(
                  height: 250,
                  autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      dazlechange = index;
                    });
                  },
                )),
                Image.asset('assets/best the chill.jpg'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset('assets/chill1.jpg',height: 300,),
                      Image.asset('assets/chill2.jpg',height: 300,),
                      Image.asset('assets/chill3.jpg',height: 300,),
                      Image.asset('assets/chill4.jpg',height: 300,),
                      Image.asset('assets/chill5.jpg',height: 300,),
                    ],
                  ),
                )
      ])
    ));
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