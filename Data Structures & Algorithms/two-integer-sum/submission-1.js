class Solution {
    /**
     * @param {number[]} nums
     * @param {number} target
     * @return {number[]}
     */
    twoSum(nums, target) {
           const dict = {};

    // First pass: build the map from value to index
    for (let i = 0; i < nums.length; i++) {
        // If the number already exists, we store the last index it appears at.
        dict[nums[i]] = i;
    }

    // Second pass: look for complement
    for (let i = 0; i < nums.length; i++) {
        const complement = target - nums[i];
        if (dict.hasOwnProperty(complement) && dict[complement] !== i) {
            return [i, dict[complement]];
        }
    }

    return [];
    }
}
