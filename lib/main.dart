import 'package:flutter/material.dart';
import 'package:islami_app/local_storage/local_storage.dart';
import 'package:islami_app/tabs/quran/sura_service.dart';
import 'package:islami_app/views/home_screen.dart';
import 'package:islami_app/views/on_boarding.dart';
import 'package:islami_app/views/sura_content.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await LocalStorage.initilize();
  await SuraService.getMostRecently();
  runApp( IslamiApp());
}

// ignore: must_be_immutable
class IslamiApp extends StatelessWidget {
   IslamiApp({super.key});
 var isfirstTime = LocalStorage.getBool("opened") ?? false;
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        OnBoarding.widgetName: (context) => OnBoarding(),
        HomeScreen.widgetName: (context) => HomeScreen(),
        SuraContent.widgetName: (context) => SuraContent()
      },
      initialRoute: isfirstTime ? HomeScreen.widgetName : OnBoarding.widgetName,
    );
  }
}
