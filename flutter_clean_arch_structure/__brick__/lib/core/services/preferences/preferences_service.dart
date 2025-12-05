import 'package:shared_preferences/shared_preferences.dart';

/// this is the main service preferences, it contains the methods to persist
/// shared preferences inside the app
class PreferencesService{

  static PreferencesService? _instance;
  static SharedPreferences? _prefs;

  PreferencesService._();

  /// init method
  static Future<PreferencesService> init() async{
    if(_instance == null){
      _instance = PreferencesService._();
      _prefs = await SharedPreferences.getInstance();
    }

    return _instance!;
  }

  bool containsKey(String key) {
    return _prefs!.containsKey(key);
  }

  String? getString(String key) {
    return _prefs!.getString(key);
  }

  Future<bool> setString(String key, String value) async {
    return _prefs!.setString(key, value);
  }

  Future<bool> remove(String key) async {
    return _prefs!.remove(key);
  }

  int? getInt(String key){
    return _prefs!.getInt(key);
  }

  Future<bool> setInt(String key, int value) async{
    return _prefs!.setInt(key, value);
  }






}