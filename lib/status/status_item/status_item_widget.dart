import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'status_item_store.dart';

class StatusItemWidget extends StatelessWidget{

  StatusItemWidget(String name): this._name = name;
  final String _name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 150,
              maxWidth: 150,
            ),
            child: Text(this._name),
          ),
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


            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 40,
                maxWidth: 40,
              ),
              child: Text(value.point.toString()),
            ),

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
