import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences pref;
  static Future<void> initilize() async {
    pref = await SharedPreferences.getInstance();
  }

  static Future<bool> setBool(String key,bool value) async{
   return await pref.setBool(key, value);
  }
    static bool? getBool(String key) {
   return  pref.getBool(key);
  }
  static Future<bool> setStringList(String key,List<String> value) async{
   return await pref.setStringList(key, value);
  }
    static List<String>? getStringList(String key) {
   return  pref.getStringList(key);
  }
}
