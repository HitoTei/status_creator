import 'package:flutter/material.dart';
import 'status_item/status_item_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ステータス作るやつ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Card(
          child: StatusItemWidget('Test')
      ),
    );
  }
}
