class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> numSet = {};
    bool isDuplicate = false;

    for(var x in nums){
 if(numSet.contains(x)){
            isDuplicate= true;
            break;
        }
        numSet.add(x);
    }
   

    return isDuplicate;

  }
}