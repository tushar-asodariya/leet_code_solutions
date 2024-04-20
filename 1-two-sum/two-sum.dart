import "dart:collection";
class Solution {
  List<int> twoSum(List<int> nums, int target) {
    SplayTreeMap<int, int> prevMap = SplayTreeMap<int, int>();

    for(int i=0;i<nums.length;i++){
        int value = target - nums[i];
        if(prevMap.containsKey(value)){
            return [i,prevMap[value]!];
        }else{
      
            prevMap[nums[i]] = i;
        }
    }
    return [0,0];
  }
}