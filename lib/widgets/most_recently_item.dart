import 'package:flutter/material.dart';
import 'package:islami_app/tabs/quran/Sura.dart';
import 'package:islami_app/views/sura_content.dart';

class MostRecentlyItem extends StatelessWidget {
  final Sura sura;
  const MostRecentlyItem({super.key, required this.sura});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SuraContent.widgetName, arguments: sura);
      },
      child: Container(
        padding: EdgeInsets.only(left: 4),
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        // height: MediaQuery.sizeOf(context).height * 0.2,
        // width: MediaQuery.sizeOf(context).width * 0.7,
        decoration: BoxDecoration(
            color: Color(0xffE2BE7F), borderRadius: BorderRadius.circular(24)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  sura.englishSuraName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  sura.arabicSuraName,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${sura.ayatNumber} Verses",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Image.asset(
              "assets/images/most_recent.png",
              height: MediaQuery.sizeOf(context).height * 0.2,
              width: MediaQuery.sizeOf(context).width * 0.4,
              // fit: BoxFit.contain,
            )
          ],
        ),
      ),
    );
  }
}
