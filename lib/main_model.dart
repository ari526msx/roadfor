import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String sText = '有村康二郎だよ';

  void changeText(){
    sText = '有村康二郎じゃないよ';
    notifyListeners();
  }

}