import 'dart:math';

import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int index = 0;
  double angle = 0;
  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله اكبر"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
          style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.w700,
              // fontFamily: "assets/fonts/Janna LT Regular/Janna LT Regular.ttf"
              ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Image.asset("assets/images/sebha_head.png"),
            ),
            GestureDetector(
              onTap: () {
                counter++;
                angle += pi / 6;
                if (counter % 33 == 0) {
                  index++;
                }
                if (index == azkar.length) {
                  index = 0;
                  counter = 0;
                }
                setState(() {});
              },
              child: Stack(alignment: Alignment.center, children: [
                Transform.rotate(
                    angle: angle,
                    child: Image.asset("assets/images/sebhabody.png")),
                Column(
                  children: [
                    Text(
                      azkar[index],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          // fontFamily:
                          //     "assets/fonts/Janna LT Regular/Janna LT Regular.ttf"
                              ),
                    ),
                    Text(
                      "$counter",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ]),
            ),
          ],
        )
      ],
    );
  }
}
