import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SalahTime extends StatelessWidget {
  const SalahTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CarouselSlider(
          disableGesture: false,
          options: CarouselOptions(
            aspectRatio: 16 / 11,
            viewportFraction: 0.4,
            initialPage: 0,
            // enableInfiniteScroll: true,
            // reverse: false,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
          ),
          items: List.generate(
              5,
              (index) => Container(
                    // height: MediaQuery.sizeOf(context).height * 0.01,
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff202020),
                          Color(0xffB19768)
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "ASR",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          "04:38",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          "PM",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ))),
    );
  }
}

