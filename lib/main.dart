import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadfor_app/next_page.dart';

void main() {
  runApp(
      MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  final appTitle = 'Form Validation Demo';
  final items = List<String>.generate(10000, (i) => "電話番号 $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Container(
          width: double.infinity,
          child: Container(
            child:GridView.count(
              crossAxisCount: 3,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(100, (index) {
                return FlatButton(
                  child:Column(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset('images/usj-kohjiro-400x400.png'),
                      ),
                      Text(
                        '電話番号 $index',
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NextPage('電話番号 $index')),
                    );
                  },
                );
              }),
            ),
          ),
        ),
    );
  }
}
