class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> numSet = nums.toSet();
    return nums.length != numSet.length;
  }
}