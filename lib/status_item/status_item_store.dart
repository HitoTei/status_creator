import 'package:flutter/cupertino.dart';

// ステータスの値を保持しておく
class StatusItemStore with ChangeNotifier{

  int point = 0;

  void addPoint(){
    point++;
    notifyListeners();
  }
  void subPoint(){
    point--;
    notifyListeners();
  }
}