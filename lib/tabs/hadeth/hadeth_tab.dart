import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/widgets/hadeth_container.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<String> hadethContent = [];
  List<String> hadethTitle = [];
  @override
  Widget build(BuildContext context) {
    if (hadethContent.isEmpty) loadHadeth();
    return CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 0.7,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
        ),
        items: List.generate(hadethContent.length, (index) {
          setState(() {});
          return HadethContainer(index: index,
              hadethTitle: hadethTitle, hadethContent: hadethContent);
        }));
  }

  void loadHadeth() async {
    for (int i = 0; i < 50; i++) {
      String content =
          await rootBundle.loadString("assets/texts/Hadeth/h${i + 1}.txt");
      int index = content.indexOf("\n");
      hadethTitle.add(content.substring(0, index));
      hadethContent.add(content.substring(index + 1));
    }

    setState(() {});
  }
}

