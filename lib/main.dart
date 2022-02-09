import 'package:flutter/material.dart';
import 'package:ft_tutorial/pages/home.dart';
import 'package:ft_tutorial/pages/loading.dart';
import 'package:ft_tutorial/pages/choose_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (contenxt) => ChooseLocation(),
    },
  ));
}
