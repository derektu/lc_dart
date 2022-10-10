// ignore_for_file: unused_element

class Solution {
  // WEIRD: this gives TLE
  bool _isPalindrome(int x) {
    var xs = x.toString();
    for (var i = 0; i < xs.length ~/ 2; i++) {
      if (xs[i] != xs[xs.length - 1 - i]) {
        return false;
      }
    }
    return true;
  }

  // WIERD: this gives TLE too !!
  bool isPalindrome(int x) {
    // reverse x
    //
    if (x < 0) return false;

    int x_original = x;
    int x_reversed = 0;
    while (x > 0) {
      x_reversed = x_reversed * 10 + x % 10;
      x = x ~/ 10;
    }
    return x_original == x_reversed;
  }
}
