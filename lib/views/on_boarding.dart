import 'package:flutter/material.dart';
import 'package:islami_app/local_storage/local_storage.dart';
import 'package:islami_app/views/home_screen.dart';
import 'package:islami_app/widgets/onboarding_widget.dart';

class OnBoarding extends StatefulWidget {
  static String widgetName = "On Boarding";
  const OnBoarding({super.key});
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController pageController = PageController();
  var currentindex = 0;
  @override
  void initState() {
    LocalStorage.setBool("opened", true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/images/logo.png"),
            Expanded(
              child: PageView(
                  controller: pageController,
                  physics: NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    currentindex = index;
                    setState(() {});
                  },
                  children: [
                    OnboardingWidget(
                        image: "assets/images/page1.png",
                        title: "Welcome To Islmi App"),
                    OnboardingWidget(
                      image: "assets/images/page2.png",
                      title: "Welcome To Islami",
                      details:
                          "We Are Very Excited To Have You In Our Community",
                    ),
                    OnboardingWidget(
                      image: "assets/images/page3.png",
                      title: "Reading the Quran",
                      details: "Read, and your Lord is the Most Generous",
                    ),
                    OnboardingWidget(
                      image: "assets/images/page4.png",
                      title: "Bearish",
                      details: "Praise the name of your Lord, the Most High",
                    ),
                    OnboardingWidget(
                      image: "assets/images/page5.png",
                      title: "Holy Quran Radio",
                      details:
                          "You can listen to the Holy Quran Radio through the application for free and easily",
                    ),
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                currentindex == 0
                    ? Spacer()
                    : TextButton(
                        onPressed: () {
                          currentindex--;
                          pageController.animateToPage(currentindex,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut);
                          setState(() {});
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(color: Color(0xffE2BE7F)),
                        ),
                      ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                    5,
                    (index) => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      width: currentindex == index ? 12 : 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: currentindex == index
                            ? Color(0xffE2BE7F)
                            : Color(0xff707070),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    currentindex++;
                    if (currentindex == 5) {
                      Navigator.pushReplacementNamed(
                          context, HomeScreen.widgetName);
                    } else {
                      pageController.animateToPage(currentindex,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut);
                    }
                    setState(() {});
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(color: Color(0xffE2BE7F)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
