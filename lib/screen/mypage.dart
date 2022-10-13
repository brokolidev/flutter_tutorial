// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/user.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserModel(),
      child: const MyPageScreen(),
    );
  }
}

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context, listen: false);

    return Column(
      children: [
        Consumer<UserModel>(builder: (context, user, child) {
          return Text("This is the ${user.id}");
        }),
        ElevatedButton(
            onPressed: () {
              user.id = 12345678;
              user.apiKey = '12345678!!!!';
              user.getApiKeyFronSharedPrefs().then((val) {
                print("설정된 API 키는 : ${val} 입니다.");
              });
            },
            child: const Text('Click me!'))
      ],
    );
  }
}
