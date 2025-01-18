import 'package:flutter/material.dart';
import 'package:islami_app/tabs/quran/Sura.dart';
import 'package:islami_app/tabs/quran/sura_service.dart';
import 'package:islami_app/views/sura_content.dart';

// ignore: must_be_immutable
class SuraLitem extends StatelessWidget {
  // int index;
  Sura sura;
  SuraLitem({super.key, required this.sura});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 70,
          width: 60,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Vector.png"),
                  fit: BoxFit.fill)),
          child: Text(
            "${sura.num}",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Text(
              sura.englishSuraName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "${sura.ayatNumber} verses",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Spacer(),
        Text(
          sura.arabicSuraName,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
