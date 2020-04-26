import 'package:flutter_test/flutter_test.dart';
import 'package:statuscreator/skills/skill_item/skill_item_store.dart';

void main(){
  test('skill item store basic test', (){
    var store = SkillItemStore(5);
    expect(false, store.isSelected);

    store.changeSelect();
    expect(true,store.isSelected);

    store.changeSelect();
    expect(false,store.isSelected);
  });

  test('skill item store ポイントが足りないときのテスト',(){
    var store = SkillItemStore(10000000);
    store.changeSelect();
    expect(false, store.isSelected);

  });
}