import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statuscreator/status/status_item/status_item_widget.dart';

class StatusWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    const itemTitles = [
      'STR','AGI','VIT','DEF','INT','LUK','DEX'
    ];

    return Container(
      child: Column(
        children: <Widget>[

          for(String title in itemTitles)
            StatusItemWidget(title)

        ],
      ),
    );
  }

}
