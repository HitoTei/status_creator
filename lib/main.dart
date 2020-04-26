import 'package:flutter/material.dart';
import 'package:statuscreator/skills/skills_widget.dart';
import 'package:statuscreator/status/status_sum_point.dart';
import 'status/status_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ステータス作るやつ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Scaffold(
          appBar: AppBar(
            title: SumPointWidget(),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () => statusSumPoint.value += 10,
              )
            ],
          ),

          body: ListView(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10),
                  child: StatusWidget()
              ),
              Divider(),
              Container(
                  padding: EdgeInsets.all(10),
                  child: SkillsWidget()
              ),
            ],
          )
      ),

    );
  }
}
