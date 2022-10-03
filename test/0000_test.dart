import 'package:lc_dart/0000.dart';
import 'package:test/test.dart';

void main() {
  group('Test 0001', () {
    final solution = Solution();

    setUp(() {
      // Additional setup goes here.
    });

    test('#1', () {
      expect(solution.sayHello(), equals(true));
    });
  });
}
