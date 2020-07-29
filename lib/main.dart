import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roadfor_app/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String sResult = '次のページへ';
  final ctrlUserName = TextEditingController();
  final ctrlMailAddr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    bool ret;
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            autofocus: true,
            controller: ctrlUserName,
            decoration: InputDecoration(
                labelText: '名前を入力してください',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'お名前は必須です。';
              }
              return null;
            },
          ),
          TextFormField(
            controller: ctrlMailAddr,
            decoration: InputDecoration(
              labelText: 'メールアドレスを入力してください',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'メールアドレスは必須です。';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              child: Text('表示'),
              onPressed: () {
                  print(ctrlUserName.text + ', ' + ctrlMailAddr.text);
                  if (ret = _formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text(ctrlUserName.text + ', ' + ctrlMailAddr.text))
                    );
                  }
              },
            ),
          ),
        ],
      ),
    );
  }
}
