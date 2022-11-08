import 'package:lc_dart/0704.dart';
import 'package:test/test.dart';

void main() {
  group('Test 0704', () {
    final solution = Solution();
    test('#1', () {
      expect(solution.search([-1, 0, 3, 5, 9, 12], 9), equals(4));
    });

    test('#2', () {
      expect(solution.search([-1, 0, 3, 5, 9, 12], 2), equals(-1));
    });
  });
}
