class Solution {
  List<int> getConcatenation(List<int> nums) {
    return nums.followedBy(nums).toList();
  }
}