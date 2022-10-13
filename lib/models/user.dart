import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserModel extends ChangeNotifier {
  int? _id;
  get id => _id;
  set id(val) {
    _id = val;
    notifyListeners();
  }

  String? _name;
  get name => _name;
  set name(val) {
    _name = val;
    notifyListeners();
  }

  String? _apiKey;
  get apiKey => _apiKey;
  set apiKey(val) {
    _apiKey = val;
    setApiKeyToSharedPrefs(val);
    notifyListeners();
  }

  Future<void> setApiKeyToSharedPrefs(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('apiKey', key);
  }

  Future<String?> getApiKeyFronSharedPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('apiKey');
  }
}
