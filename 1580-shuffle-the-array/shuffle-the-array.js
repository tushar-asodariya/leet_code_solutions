/**
 * @param {number[]} nums
 * @param {number} n
 * @return {number[]}
 */
var shuffle = function(nums, n) {
    var shuffledList = [];
    let j =n
    for(let i =0; j<nums.length; j++){
        shuffledList.push(nums[i++])
        shuffledList.push(nums[j])

    }
return shuffledList;
};