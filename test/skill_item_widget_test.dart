
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:statuscreator/skills/skill_item/skill_item_widget.dart';

void main(){
  testWidgets('skill item widget test', (WidgetTester tester) async{
    await tester.pumpWidget(MaterialApp(
        home: SkillItemWidget(skillName: 'hogehoge',point: 10)
    ));
    
    expect(find.text('hogehoge'),findsOneWidget);
  
    expect(find.byType(Checkbox) , findsOneWidget);

    expect((find.byType(Checkbox).evaluate().single.widget as Checkbox).value, false);

    await tester.tap(find.byType(Checkbox));
    await tester.pump();
    expect((find.byType(Checkbox).evaluate().single.widget as Checkbox).value, true);

    await tester.tap(find.byType(Checkbox));
    await tester.pump();
    expect((find.byType(Checkbox).evaluate().single.widget as Checkbox).value, false);

  });

}