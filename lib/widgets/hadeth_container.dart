import 'package:flutter/material.dart';

class HadethContainer extends StatelessWidget {
  const HadethContainer({
    super.key,
    required this.hadethTitle,
    required this.hadethContent,
    required this.index
  });

  final List<String> hadethTitle;
  final List<String> hadethContent;
 final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffE2BE7F),
        image: DecorationImage(
          image: AssetImage("assets/images/hadithcardbackground.png"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/header_left.png",
                  alignment: Alignment.topLeft,
                  color: Colors.black,
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  width: MediaQuery.sizeOf(context).width / 7,
                  fit: BoxFit.fill,
                ),
                Expanded(
                  child: Text(
                    textAlign: TextAlign.center,
                    hadethTitle[index],
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
                Image.asset(
                  "assets/images/header_right.png",
                  alignment: Alignment.topRight,
                  color: Colors.black,
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  width: MediaQuery.sizeOf(context).width / 7,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  textAlign: TextAlign.center,
                  hadethContent[index],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          // Text("data"),
          Image.asset(
            "assets/images/mosque_footer.png",
            alignment: Alignment.bottomCenter,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
