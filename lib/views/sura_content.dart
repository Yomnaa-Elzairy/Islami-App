import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/tabs/quran/Sura.dart';

// ignore: must_be_immutable
class SuraContent extends StatefulWidget {
  static String widgetName = "Sura Content";

  const SuraContent({super.key});

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  List<String> content = [];

  @override
  Widget build(BuildContext context) {
    Sura sura = ModalRoute.settingsOf(context)?.arguments as Sura;
    if (content.isEmpty) loadSuras(sura.num-1);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Color(0xffE2BE7F),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          sura.englishSuraName,
          style: TextStyle(
              color: Color(0xffE2BE7F),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/header_left.png"),
                Text(
                 sura.arabicSuraName,
                  style: TextStyle(
                      color: Color(0xffE2BE7F),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset("assets/images/header_right.png"),
              ],
            ),
            //Spacer(),
            content.isEmpty
                ? CircularProgressIndicator(
                    color: Color(0xffE2BE7F),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: content.length,
                      itemBuilder: (context, index) => Text(
                        textAlign: TextAlign.center,
                        "${content[index]} [${index + 1}]",
                        style: TextStyle(
                            color: Color(0xffE2BE7F),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
            Image.asset(
              "assets/images/mosque_footer.png",
              alignment: Alignment.bottomCenter,
              height: MediaQuery.sizeOf(context).height * 0.1,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }

  void loadSuras(int index) async {
    String suraContent =
        await rootBundle.loadString("assets/texts/Suras/${index + 1}.txt");
    content = suraContent.split("\r\n");
    setState(() {});
  }
}
