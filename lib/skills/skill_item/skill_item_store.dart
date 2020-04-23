
import 'package:flutter/cupertino.dart';
import 'package:statuscreator/status/status_sum_point.dart';

class SkillItemStore with ChangeNotifier{
  SkillItemStore(this.point);
  final int point;

  bool isSelected = false;

  void changeSelect(){
    if(isSelected)_deselect();
    else _select();
  }

  void _select(){
    if(statusSumPoint.value < point)return;

    statusSumPoint.value -= point;
    isSelected = true;

    notifyListeners();
  }

  void _deselect(){
    statusSumPoint.value += point;
    isSelected = false;

    notifyListeners();
  }

}