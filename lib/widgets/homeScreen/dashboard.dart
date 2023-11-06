import 'package:demo_project/assets.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final myitems = [
    Stack(
      children: [
        Container(
          width: 380,
          height: 170,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image1), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ],
          ),
          child: const Padding(
                padding: EdgeInsets.only(top: 40, left: 50),
                child: Text(
                  'The best cure of the body is quite mind',
                  style: TextStyle(
                    color: Colors.white,
                    wordSpacing: 1,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        ),
      ],
    ),
    Stack(
      children: [
        Container(
          width: 380,
          height: 170,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image2), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ],
          ),
          child: const Padding(
                padding: EdgeInsets.only(right: 50, top: 20, left: 10),
                child: Text(
                  'Yoga is a path towads being boundless',
                  style: TextStyle(
                    color: Colors.black,
                    wordSpacing: 1,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        ),
      ],
    ),
    Stack(
      children: [
        Container(
          width: 380,
          height: 170,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image3), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ],
          ),
          child: const Padding(
                padding: EdgeInsets.only(right: 50, top: 20, left: 10),
                child: Text(
                  'Excuses dont kill the fat, Exercises do',
                  style: TextStyle(
                    color: Colors.white,
                    wordSpacing: 1,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        ),
      ],
    ),
  ];
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                height: 171,
                autoPlayCurve: Curves.easeOutQuint,
                autoPlayAnimationDuration: const Duration(seconds: 4),
                autoPlayInterval: const Duration(seconds: 5),
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    myCurrentIndex = index;
                  });
                }),
            items: myitems,
          ),
        ],
      ),
    );
  }
}
