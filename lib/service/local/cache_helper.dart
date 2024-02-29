import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;
  static init() async {
    //! getInstance => from type 'Future<SharedPreferences>'
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool?> setThemeValue(
      {required String key, required bool value}) async {
    //! set Boolean => from type 'Future<bool>'
    return await sharedPreferences.setBool(key, value);
  }

  static bool? getThemeValue({required String key}) {
    return sharedPreferences.getBool(key);
  }
}
