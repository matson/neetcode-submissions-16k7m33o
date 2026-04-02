class Solution {
    /**
     * @param {number[]} nums
     * @return {number[][]}
     */
    subsetsWithDup(nums) {

       const sortedNum = nums.sort((a, b) => a - b);
    const result = [];
    const curSub = [];
    helper(0, sortedNum, result, curSub);
    return result;
      function  helper(i, nums, result, curSub) {
    // Base case
    if (i >= nums.length) {
        result.push([...curSub]);
        return;
    }

    // Include the current number
    curSub.push(nums[i]);
    helper(i + 1, nums, result, curSub);
    curSub.pop();

    // Skip duplicates
    let j = i;
    while (j + 1 < nums.length && nums[j] === nums[j + 1]) {
        j++;
    }
    helper(j + 1, nums, result, curSub);
    }
    }
    
}



