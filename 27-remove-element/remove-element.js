/**
 * @param {number[]} nums
 * @param {number} val
 * @return {number}
 */
var removeElement = function(nums, val) {
    let j = 0;
    for(let i=0; i< nums.length;i++){

        // if(nums[i] == val  ){
        //     if(nums[i+1]!=undefined && nums[i+1]!=val){
        //    nums[j] = nums[i+1]      
        //     j++
        //     i++
        //     }
        // }else{

        //     nums[j]= nums[i]
        //     j++
        // }
        if(nums[i] !== val){
            nums[j++] = nums[i]

        }
    }
    return j
};