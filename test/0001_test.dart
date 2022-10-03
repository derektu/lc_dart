import 'package:lc_dart/0001.dart';
import 'package:test/test.dart';

void main() {
  group('Test 0001', () {
    final solution = Solution();

    setUp(() {
      // Additional setup goes here.
    });

    test('#1', () {
      expect(solution.twoSum([2, 7, 11, 15], 9), equals([0, 1]));
    });

    test('#2', () {
      expect(solution.twoSum([3, 2, 4], 6), equals([1, 2]));
    });

    test('#3', () {
      expect(solution.twoSum([3, 3], 6), equals([0, 1]));
    });
  });
}
