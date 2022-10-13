import 'package:flutter/material.dart';
import 'package:flutter_tutorial/common/theme.dart';
import 'package:flutter_tutorial/screen/login.dart';
import 'package:flutter_tutorial/screen/mypage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Sample',
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyLogin(),
        '/mypage': (context) => const MyPage(),
      },
    );
  }
}
