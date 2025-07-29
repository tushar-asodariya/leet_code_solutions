/**
 * @param {number[]} nums
 * @param {number} n
 * @return {number[]}
 */
var shuffle = function(nums, n) {
    let t = nums[0]
    let newNums = []
    let j = 0;
    let hList = nums.slice(n)
    for(let i = 0; i<n ; i++){
          newNums.push(t)
          t = nums[i+1]
          newNums.push(hList[i])  
    }

    return newNums
};