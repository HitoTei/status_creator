import 'package:flutter_test/flutter_test.dart';
import 'package:statuscreator/status/status_item/status_item_store.dart';
import 'package:statuscreator/status/status_sum_point.dart';

void main(){
  test('StatusItem Store Test', (){
    var statusItemStore = StatusItemStore();
    expect(0,statusItemStore.point);
    expect(100, statusSumPoint.value);

    statusItemStore.addPoint();
    expect(1, statusItemStore.point);
    expect(99, statusSumPoint.value);

    statusItemStore.subPoint();
    expect(0, statusItemStore.point);
    expect(100, statusSumPoint.value);

    statusItemStore.subPoint();
    expect(0, statusItemStore.point);
    expect(100, statusSumPoint.value);

    // 100回だとちょうどで、sumPointがプラスのままか分からないので少し多めにした
    for(int i = 0;i < 110;i++){
      statusItemStore.addPoint();
    }
    expect(100, statusItemStore.point);
    expect(0, statusSumPoint.value);

  });
}