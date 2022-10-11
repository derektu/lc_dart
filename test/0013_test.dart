import 'package:lc_dart/0013.dart';
import 'package:test/test.dart';

void main() {
  group('Test 0013', () {
    final solution = Solution();

    setUp(() {
      // Additional setup goes here.
    });

    test('#1', () {
      expect(solution.romanToInt('III'), equals(3));
    });

    test('#2', () {
      expect(solution.romanToInt('LVIII'), equals(58));
    });

    test('#3', () {
      expect(solution.romanToInt('MCMXCIV'), equals(1994));
    });
  });
}
