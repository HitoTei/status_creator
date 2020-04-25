import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statuscreator/skills/skill_item/skill_item_store.dart';

class SkillItemWidget extends StatelessWidget{

  SkillItemWidget({@required String skillName,@required int point})
      :this._skillName = skillName, this._point = point;

  final String _skillName;
  final int _point;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Text(_skillName),
          Text('point: $_point'),
          _selectWidget()
        ],
      ),
    );
  }

  Widget _selectWidget(){
    return ChangeNotifierProvider<SkillItemStore>(
      create: (_) => SkillItemStore(_point),
      child: _SelectWidget(),
    );
  }

}

class _SelectWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer<SkillItemStore>(
      builder: (BuildContext context, SkillItemStore value, Widget child) {
        return Checkbox(
          value: value.isSelected,
          onChanged: (_) => value.changeSelect(),
        );
      },
    );
  }
}