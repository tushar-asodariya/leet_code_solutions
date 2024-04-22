class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> numSet = {};

    for(var x in nums){
 if(numSet.contains(x)){
            return true;
        }
        numSet.add(x);
    }
   

    return false;

  }
}