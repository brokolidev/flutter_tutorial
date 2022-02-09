import 'package:flutter/material.dart';
import 'member.dart';
import 'member_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Member> members = [
    Member(name: 'Lee', age: 37, sex: 'm'),
    Member(name: 'Choi', age: 34, sex: 'm'),
    Member(name: 'Jung', age: 27, sex: 'f'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('리스트 출력'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: members.map((member) => MemberCard(
          member: member,
          delete: () {
            setState(() {
              members.remove(member);
            });
          }
        )).toList(),
      ),
    );
  }
}