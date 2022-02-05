import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.red[600],
        centerTitle: true,
      ),
      body: Center(
        // child: Image.asset('assets/balloons.jpg'),
        // child: Image.network('https://images.unsplash.com/photo-1644072980122-22f4365d4519?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80'),
        // child: TextButton.icon(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.mail
        //     ),
        //     label: Text('mail me'),
        // ),
        child: IconButton(
          onPressed: () {
            print('you clicked me!!');
          },
          icon: Icon(Icons.alternate_email),
          color: Colors.amber,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('test!!!');
        },
        child: Text('Click'),
      ),
    );
  }
}


