import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnboardingWidget extends StatelessWidget {
  String image;
  String title;
  String? details;
  OnboardingWidget(
      {super.key, required this.image, required this.title, this.details});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(
              color: Color(0xffE2BE7F),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Text(
            textAlign: TextAlign.center,
            details ?? "",
            style: TextStyle(
                color: Color(0xffE2BE7F),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
