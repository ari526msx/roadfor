import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.from1stPage);
  final String from1stPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2nd Page'),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(from1stPage),
            Center(
              child: RaisedButton(
                child: Text('戻る'),
                onPressed: () {
                  Navigator.pop(context, '2ndページからの戻り値');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}