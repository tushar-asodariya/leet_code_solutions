/**
 * @param {number[]} nums
 * @param {number} n
 * @return {number[]}
 */
var shuffle = function(nums, n) {
    let shuffledList = [];
    for(let i =0; i<n; i++){
        shuffledList.push(nums[i])
        shuffledList.push(nums[i+n])

    }
return shuffledList;
};