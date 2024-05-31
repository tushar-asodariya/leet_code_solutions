class Solution {
  int removeDuplicates(List<int> nums) {
    int i = 1;
    for(var j=0; j<nums.length;j++){
        if(j+1!=nums.length && nums[j]!=nums[j+1]){
            nums[i] = nums[j+1];
            i++;
        }
    }
    return i;
  }
}