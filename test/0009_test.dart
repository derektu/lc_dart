import 'package:lc_dart/0009.dart';
import 'package:test/test.dart';

void main() {
  group('Test 0009', () {
    final solution = Solution();

    setUp(() {
      // Additional setup goes here.
    });

    test('#1', () {
      expect(solution.isPalindrome(121), equals(true));
    });

    test('#2', () {
      expect(solution.isPalindrome(-121), equals(false));
    });

    test('#3', () {
      expect(solution.isPalindrome(10), equals(false));
    });
  });
}
