import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statuscreator/status/status_item/status_item_widget.dart';
import 'package:statuscreator/status/status_sum_point.dart';

class StatusWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    const itemTitles = [
      'STR','AGI','VIT','DEF','INT','LUK','DEX'
    ];

    return Container(
      child: ListView(
        children: <Widget>[
          ValueListenableProvider<int>(
            create:(_) => statusSumPoint,
            child: _SumPoint(),
          ),

          for(String title in itemTitles)
            Card(
                child: StatusItemWidget(title)
            ),

        ],
      ),
    );
  }

}

class _SumPoint extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final sum = Provider.of<int>(context);
    return Container(
      child: Text(sum.toString()),
    );
  }

}