// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_tutorial/main.dart';
import 'package:flutter_tutorial/models/user.dart';

void main() {
  test('adding item increases total cost', () {
    final user = UserModel();
    final userId = user.id;
    user.addListener(() {
      expect(user.id, 20);
    });
    user.changeUserId(30);
  });
}
