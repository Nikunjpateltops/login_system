import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefrenceSer {
  static SharedPreferences? _pref;

  static Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  static setValue({required key, required value}) async {
    if (value is int) {
      await _pref!.setInt(key, value);
    } else if (value is bool) {
      await _pref!.setBool(key, value);
    } else if (value is double) {
      await _pref!.setDouble(key, value);
    } else if (value is String) {
      await _pref!.setString(key, value);
    } else if (value is List<String>) {
      await _pref!.setStringList(key, value);
    } else {
      Fluttertoast.showToast(msg: "Please enter valid value.");
    }
  }

  static String getString(key) {
    return _pref!.getString(key) ?? "";
  }

  static int getInt(key) {
    return _pref!.getInt(key) ?? 0;
  }

  static double getDouble(key) {
    return _pref!.getDouble(key) ?? 0.0;
  }

  static bool getBool(key) {
    return _pref!.getBool(key) ?? false;
  }

  static List<String> getListOfString(key) {
    return _pref!.getStringList(key) ?? [];
  }

  static removeValue(key) {
    _pref!.remove(key);
  }

  static void clearPref() {
    _pref!.clear();
  }
}
