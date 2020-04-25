import 'package:flutter/cupertino.dart';
import 'package:statuscreator/skills/skill_item/skill_item_widget.dart';

class SkillsWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final skills = [
      _Skill('hogehoge',10),
      _Skill('fugafuga',50),
      _Skill('sample',13),
      _Skill('test',28),
      _Skill('Hello',20),
      _Skill('Nanka',50),
    ];

    return Container(
      child: Column(
        children: <Widget>[
          for(var skill in skills)
            SkillItemWidget(skillName: skill.name,point: skill.point),
        ],
      ),
    );
  }

}

class _Skill{
  _Skill(this.name,this.point);
  String name;
  int point;
}