class Item {
  Item(this.value, this.index);
  int value;
  int index;
}

class Solution {
  List<int> twoSum_naive(List<int> nums, int target) {
    // naive implementation (O(n*n))
    // this will TLE
    for (var i = 0; i < nums.length; i++) {
      for (var j = 0; j < nums.length; j++) {
        if (j != i && nums[j] + nums[i] == target) {
          return [i, j];
        }
      }
    }
    throw 'impossible';
  }

  List<int> twoSum(List<int> nums, int target) {
    // sort the list first
    List<Item> list = [];
    for (var i = 0; i < nums.length; i++) {
      list.add(Item(nums[i], i));
    }
    list.sort((a, b) => a.value.compareTo(b.value));
    for (var i = 0; i < list.length; i++) {
      for (var j = i + 1; j < list.length; j++) {
        var sum = list[i].value + list[j].value;
        if (sum == target) {
          return [list[i].index, list[j].index];
        } else if (sum > target) {
          break;
        }
      }
    }
    throw 'impossible';
  }
}
