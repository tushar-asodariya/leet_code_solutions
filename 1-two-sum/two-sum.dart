class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> prevMap = {};

    for(int i=0;i<nums.length;i++){
        int value = target - nums[i];
        if(prevMap.containsKey(value)){
            return [i,prevMap[value]!];
        }
      
            prevMap[nums[i]] = i;
        
    }
    return [];
  }
}