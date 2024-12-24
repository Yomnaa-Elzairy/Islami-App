import 'package:flutter/material.dart';

class RadioContainer extends StatelessWidget {
  const RadioContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      height: MediaQuery.of(context).size.height / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Color(0xffE2BE7F),
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          fit: BoxFit.contain,
          image: AssetImage("assets/images/mosque.png"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Radio Ibrahim Al-Akdar",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.play_arrow,
                size: 40,
              ),
              Icon(
                Icons.volume_up,
                size: 35,
              )
            ],
          ),
          // Image.asset("assets/images/mosque.png")
        ],
      ),
    );
  }
}
