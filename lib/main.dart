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
  final appTitle = 'トレーニングメニュー';
  final items = List<String>.generate(10000, (i) => "電話番号 $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.orange,
              title: Text(appTitle),
              floating: true,
              flexibleSpace: Placeholder(),
              expandedHeight: 200,
              leading: FlatButton(
                child: Icon(Icons.menu),
                onPressed: () {

                },
              ),
              actions: <Widget>[
                FlatButton(
                  child: Icon(Icons.settings),
                  onPressed: () {

                  },
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.orange,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'images/usj-kohjiro-400x400.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            Text('電話番号 $index'),
                          ],
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NextPage('電話番号 $index')),
                      );
                    },
                  ),
                  childCount: 1000,
              ),
            ),
          ],
        ),
    );
  }
}
