import 'package:flutter/material.dart';
import 'package:islami_app/widgets/azkar_container.dart';
import 'package:islami_app/widgets/date_container.dart';
import 'package:islami_app/widgets/salah_tiime.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.3,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Color(0xffE2BE7F),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DateContainer(
                    date: "16 Jul,2024",
                    left: true,
                  ),
                  Column(
                    children: [
                      Text(
                        "Pray Time",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Tuesday",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  DateContainer(date: "109 Muh,1446", left: false)
                ],
              ),
              SalahTime(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Spacer(
                      flex: 3,
                    ),
                    Text(
                      "Next Pray - 02:32",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Icon(Icons.volume_off),
                    Spacer()
                  ],
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              // textAlign: TextAlign.left,
              "Azkar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AzkarContainer(
              image: "assets/images/evening_azkar.png",
              title: "Evening Azkar",
            ),
            AzkarContainer(
              image: "assets/images/morning_azkar.png",
              title: "Morning Azkar",
            ),
          ],
        )
      ],
    );
  }
}

