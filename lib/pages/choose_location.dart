import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    // 유저네임 가져오기
    await Future.delayed(Duration(seconds: 3), () {
      print('사용자명은 코코가 입니다!');
    });

    // API 키 가져오기
    await Future.delayed(Duration(seconds: 2), () {
      print('API Key: 1234!!!!@@@@####!');
    });

    print('초기화');

  }

  @override
  void initState() {
    super.initState();

    getData();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location!'),
        centerTitle: true,
        elevation: 0,
      ),
      body:Text('Choose a Location!'),
    );
  }
}
