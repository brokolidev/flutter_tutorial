import 'package:flutter/material.dart';

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
}
