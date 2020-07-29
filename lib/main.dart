import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roadfor_app/main_model.dart';
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(appTitle),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
              return Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(
                      model.sText,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    RaisedButton(
                      child: Text('テキスト変更'),
                      onPressed: () {
                        model.changeText();
                      },
                    )
                  ],
                ),
              );
            }
          )
        ),
      )
    );
  }
}
