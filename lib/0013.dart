// ignore_for_file: unused_element

class Solution {
  // I    = 1
  // IV   = 4
  // IX   = 9
  // V    = 5
  // X    = 10
  // XL   = 40
  // XC   = 90
  // L    = 50
  // C    = 100
  // CD   = 400
  // CM   = 900
  // D    = 500
  // M    = 1000

  // This will TLE
  int _romanToInt(String s) {
    var total = 0;
    for (var i = 0; i < s.length; i++) {
      //
      var c = s[i];
      var c2 = (i < s.length - 1) ? s[i + 1] : 0;

      if (c == 'V') {
        total += 5;
      } else if (c == 'L') {
        total += 50;
      } else if (c == 'D') {
        total += 500;
      } else if (c == 'M') {
        total += 1000;
      } else if (c == 'I') {
        if (c2 == 'V') {
          total += 4;
          i += 1;
        } else if (c2 == 'X') {
          total += 9;
          i += 1;
        } else {
          total += 1;
        }
      } else if (c == 'X') {
        if (c2 == 'L') {
          total += 40;
          i += 1;
        } else if (c2 == 'C') {
          total += 90;
          i += 1;
        } else {
          total += 10;
        }
      } else if (c == 'C') {
        if (c2 == 'D') {
          total += 400;
          i += 1;
        } else if (c2 == 'M') {
          total += 900;
          i += 1;
        } else {
          total += 100;
        }
      } else {
        throw 'Unexpected';
      }
    }
    return total;
  }

  int romanToInt(String s) {
    var map2 = {'IV': 4, 'IX': 9, 'XL': 40, 'XC': 90, 'CD': 400, 'CM': 900};
    var map = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000};

    var total = 0;
    for (var i = 0; i < s.length; i++) {
      if (i < s.length - 1) {
        var value = map2[s.substring(i, i + 2)] ?? 0;
        if (value != 0) {
          total += value;
          i++;
          continue;
        }
      }
      total += map[s.substring(i, i + 1)]!;
    }
    return total;
  }
}
