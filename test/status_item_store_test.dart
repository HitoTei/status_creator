import 'package:flutter_test/flutter_test.dart';
import 'package:statuscreator/status_item/status_item_store.dart';

void main(){
  test('StatusItem Store Test', (){
    var statusItemStore = StatusItemStore();
    expect(0,statusItemStore.point);

    statusItemStore.addPoint();
    expect(1, statusItemStore.point);

    statusItemStore.subPoint();
    expect(0, statusItemStore.point);
  });
}