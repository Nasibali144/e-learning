import 'package:e_learning/services/utils.dart';
import 'package:test/test.dart';

void main() {
  test("Utils", () {
    String uid = Utils.generateUID();
    print(uid);

    expect(uid, isNotNull);
  });
}
