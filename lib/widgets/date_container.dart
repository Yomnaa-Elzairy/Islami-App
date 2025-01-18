import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({super.key, required this.date,required this.left});
  final String date;
  final bool left;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      clipBehavior: Clip.antiAlias,
      alignment: Alignment.center,
      height: MediaQuery.sizeOf(context).height * 0.1,
      width: MediaQuery.sizeOf(context).width * 0.3,
      decoration: BoxDecoration(
        color: Color(0xff856B3F),
        borderRadius: BorderRadius.only(
          topLeft:left? Radius.circular(32):Radius.elliptical(0, 32),
          topRight:left? Radius.elliptical(0, 32):Radius.circular(32),
          bottomLeft:left?Radius.zero: Radius.circular(64),
          bottomRight:left? Radius.circular(64):Radius.zero,
        ),
      ),
      child: Text(
        textAlign: TextAlign.center,
        date,
        style: TextStyle(
            // backgroundColor: Color(0xff856B3F),
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
