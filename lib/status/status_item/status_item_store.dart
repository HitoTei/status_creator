import 'package:flutter/cupertino.dart';
import 'package:statuscreator/status/status_sum_point.dart';

// ステータスの値を保持しておく
class StatusItemStore with ChangeNotifier{
  // ステータスが保持しているポイント
  int point = 0;

  void addPoint(){
    if(statusSumPoint.value <= 0)return;

    point++;
    statusSumPoint.value--;

    notifyListeners();
  }

  void subPoint(){
    if(point <= 0)return;

    statusSumPoint.value++;
    point--;

    notifyListeners();
  }

}