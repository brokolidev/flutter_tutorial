import 'package:flutter/material.dart';
import 'member.dart';

class MemberCard extends StatelessWidget {

  final Member member;
  final Function delete;

  const MemberCard({ required this.member, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '${member.name} / ${member.sex}',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              member.age.toString(),
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800]
              ),
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(onPressed: () {
              delete;
            }, icon: Icon(Icons.delete), label: Text('삭제'))
          ],
        ),
      ),
    );
  }
}
