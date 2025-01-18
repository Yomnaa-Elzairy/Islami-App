import 'package:flutter/material.dart';

class AzkarContainer extends StatelessWidget {
  const AzkarContainer({
    super.key,
    required this.image,
    required this.title
  });
 final String image;
 final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Color(0xffE2BE7F)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            width: MediaQuery.sizeOf(context).width * 0.45,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
