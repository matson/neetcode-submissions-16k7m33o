class Solution {
    /**
     * @param {number[]} nums
     * @return {number}
     */
    findDuplicate(nums) {

          let dict = {};
    
    // Build frequency dictionary
    for (let i = 0; i < nums.length; i++) {
        dict[nums[i]] = (dict[nums[i]] || 0) + 1;
    }
    
    // Find first key with frequency >= 2
    for (let key in dict) {
        if (dict[key] >= 2) {
            return parseInt(key);
        }
    }
    
    return -1;
    }
}
