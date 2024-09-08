import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Temp extends StatefulWidget {
  const Temp({super.key});

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp>  {

  int activeIndex = 0;

  var controller = CarouselSliderController();

  var imageList = [
    'assets/images/img_1.jpg',
    'assets/images/img_2.jpg',
    'assets/images/img_3.jpg',
    'assets/images/img_4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
        backgroundColor: const Color.fromARGB(255, 133, 194, 245),
      ),
    
      body: Column(
        children: [
          CarouselSlider.builder(
            carouselController: controller,
            itemCount: imageList.length, 
            itemBuilder: (context, index, realIndex) {
              return Container(
                //margin: EdgeInsets.symmetric(horizontal: 4),
                width: double.infinity,
                height: 520,
                color: Colors.grey,
                child: Image.asset(imageList[index],),
              );
            }, 
            options: CarouselOptions(
              viewportFraction: 0.8,
              height: 420,
              aspectRatio: 16/9,
              //scrollDirection: Axis.vertical,
              //initialPage: 1,
              //autoPlay: true,
              //reverse: true,
              //enableInfiniteScroll: false
              //autoPlayAnimationDuration: Duration(milliseconds: 100),
              //autoPlayCurve: Curves.bounceIn,
              //pageSnapping: false,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            )
          ),

          SizedBox(height: 22,),

          AnimatedSmoothIndicator(
            activeIndex: activeIndex, 
            count: imageList.length,
            effect: WormEffect(),
            onDotClicked: (index) {
              controller.animateToPage(index);
            },
          ),

          // SmoothPageIndicator(
          //   controller: PageController(
          //     initialPage: activeIndex
          //   ),
          //   count: imageList.length,
          //   effect: WormEffect(
          //     activeDotColor: Colors.red
          //   ),
          //   onDotClicked: (index) {
          //     setState(() {
          //       activeIndex = index;
          //     });
          //   },
          // ),

          ElevatedButton(onPressed: () {
            controller.nextPage();
          }, child: Text('Forward')),

          ElevatedButton(onPressed: () {
            controller.previousPage();
          }, child: Text('Backward'))
        ],
      )
    
    );
  }
}