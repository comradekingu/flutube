import 'package:shared_preferences/shared_preferences.dart';

class MyPrefs {
  static final MyPrefs _instance = MyPrefs._internal();

  factory MyPrefs() {
    return _instance;
  }

  MyPrefs._internal();

  late SharedPreferences _prefs;

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences get prefs => _prefs;
}
