/**
 * @param {number[]} nums
 * @return {number[]}
 */
var getConcatenation = function(nums) {
    const newList=nums
    nums.map(x=>{
        newList.push(x)
    })
    return newList
};