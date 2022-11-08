///
/// BinarySearch, find exact match of [target] inside [nums] array.
/// [left] and [right] are INCLUSIVE
/// return the found index, of -1 if not found
///
int bsearch(List<int> nums, int left, int right, int target) {
  while (left <= right) {
    var mid = left + (right - left) ~/ 2;
    if (nums[mid] == target) {
      return mid;
    } else if (nums[mid] < target) {
      left = mid + 1;
    } else /*if (nums[mid] > target)*/ {
      right = mid - 1;
    }
  }
  return -1;
}

class Solution {
  int search(List<int> nums, int target) {
    return bsearch(nums, 0, nums.length - 1, target);
  }
}
