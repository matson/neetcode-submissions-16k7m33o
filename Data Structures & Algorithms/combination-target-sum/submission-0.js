class Solution {
    /**
     * @param {number[]} nums
     * @param {number} target
     * @returns {number[][]}
     */
    combinationSum(nums, target) {
        
    const combos = [];
    const curCombo = [];
    
    function helper(i, nums, total, target, curCombo, combos) {
        // Base case: if total matches target, add combination
        if (total === target) {
            combos.push([...curCombo]); // Create a copy of curCombo
            return;
        }
        
        // Base case: if out of bounds or total exceeds target
        if (i >= nums.length || total > target) {
            return;
        }
        
        // Include nums[i]
        curCombo.push(nums[i]);
        helper(i, nums, total + nums[i], target, curCombo, combos);
        curCombo.pop(); // Backtrack
        
        // Exclude nums[i]
        helper(i + 1, nums, total, target, curCombo, combos);
    }
    
    helper(0, nums, 0, target, curCombo, combos);
    return combos;
}





    
}
