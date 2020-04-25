import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'status_item_store.dart';

class StatusItemWidget extends StatelessWidget{
  final String _title;
  StatusItemWidget(String title): this._title = title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text(this._title),
          _value()
        ],
      ),
    );
  }

  Widget _value(){
    return ChangeNotifierProvider<StatusItemStore>(
      create: (_)=>StatusItemStore(),
      child: _ValueWidget(),
    );
  }
}

// ステータスの値を保持する
class _ValueWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer<StatusItemStore>(
      builder: (BuildContext context,StatusItemStore value, Widget child) {
        return Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_drop_up),
              onPressed: value.addPoint,
            ),

            Text(value.point.toString()),

            IconButton(
              icon: const Icon(Icons.arrow_drop_down),
              onPressed: value.subPoint,
            )

          ]
        );
      },
    );
  }

}
