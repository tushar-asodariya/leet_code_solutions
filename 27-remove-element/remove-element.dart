class Solution {
  int removeElement(List<int> nums, int val) {
   nums.removeWhere((x)=>x==val);
    return nums.length;
  }
}