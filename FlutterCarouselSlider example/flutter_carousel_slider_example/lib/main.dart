import 'package:flutter/material.dart';

import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);



/////////////////////////////////////
// @CodeWithFlexz on Instagram
//
// AmirBayat0 on Github
// Programming with Flexz on Youtube
/////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(
            "@CodeWithFlexZ",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: CarouselSlider.builder(
              slideBuilder: (index) {
                return Image.asset(
                  "assets/images/na${index + 1}.jpg",
                  fit: BoxFit.cover,
                );
              },
              slideTransform: const CubeTransform(),
              slideIndicator: CircularSlideIndicator(
                indicatorBackgroundColor: Colors.white,
                currentIndicatorColor: const Color.fromARGB(255, 53, 53, 53),
                indicatorBorderColor: Colors.grey,
                padding: const EdgeInsets.only(bottom: 30),
              ),
              itemCount: 6),
        ),
      ),
    );
  }
}
