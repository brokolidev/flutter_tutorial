import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {

    var url =
    Uri.http('worldtimeapi.org', '/api/timezone/Asia/Seoul');

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var timeData =
      convert.jsonDecode(response.body) as Map<String, dynamic>;

      String datetime = timeData['utc_datetime'];
      String offset = timeData['utc_offset'].substring(1, 3);

      DateTime now = DateTime.parse(datetime);

      now = now.add(Duration(hours: int.parse(offset)));

      print(now);

    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
