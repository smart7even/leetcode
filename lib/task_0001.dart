// Solution for https://leetcode.com/problems/two-sum/

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var checkedNumbers = <int, int>{};

    for (int i = 0; i < nums.length; i++) {
      int num = nums[i];

      var complimentaryNumber = target - num;
      var complimentaryNumberIndex = checkedNumbers[complimentaryNumber];

      if (complimentaryNumberIndex != null) {
        return [complimentaryNumberIndex, i];
      } else {
        checkedNumbers[num] = i;
      }
    }

    throw ArgumentError(
        'Expected list of nums that have two integers which sum is $target');
  }
}
