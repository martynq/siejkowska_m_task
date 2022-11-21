import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelpers {
  static Future<bool?> getBoolValue(String key) async {
    final sharedPreferencesInstance = await SharedPreferences.getInstance();
    return sharedPreferencesInstance.getBool(key);
  }

  static Future<bool> setBoolValue(String key, bool value) async {
    final sharedPreferencesInstance = await SharedPreferences.getInstance();
    return sharedPreferencesInstance.setBool(key, value);
  }

  static Future<String?> getStringValue(String key) async {
    final sharedPreferencesInstance = await SharedPreferences.getInstance();
    return sharedPreferencesInstance.getString(key);
  }

  static Future<bool> setStringValue(String key, String value) async {
    final sharedPreferencesInstance = await SharedPreferences.getInstance();
    return sharedPreferencesInstance.setString(key, value);
  }
}
