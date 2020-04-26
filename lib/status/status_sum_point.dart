import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

// Todo: グローバル変数名のは気になるので、別の方法を見つけたら変更する
final statusSumPoint = ValueNotifier(100);

class SumPointWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ValueListenableProvider<int>(
      create:(_) => statusSumPoint,
      child: _SumPoint(),
    );
  }
}

class _SumPoint extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final sum = Provider.of<int>(context);
    return Container(
      child: Text('point: $sum'),
    );
  }

}