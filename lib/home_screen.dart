import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/tabs/hadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';
import 'package:islami_app/tabs/time_tab.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  static String widgetName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab()
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        backgroundColor: Color(0xffE2BE7F),
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xffE2BE7F),
            icon: SvgPicture.asset("assets/icons/quran.svg"),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffE2BE7F),
            icon: SvgPicture.asset("assets/icons/hadeth.svg"),
            label: "Hadeth",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffE2BE7F),
            icon: SvgPicture.asset("assets/icons/sebha.svg"),
            label: "Sebha",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffE2BE7F),
            icon: SvgPicture.asset("assets/icons/radio.svg"),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffE2BE7F),
            icon: SvgPicture.asset("assets/icons/time.svg"),
            label: "Time",
          ),
        ],
      ),
      body: tabs[currentIndex],
    );
  }
}
