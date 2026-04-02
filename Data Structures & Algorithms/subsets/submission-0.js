class Solution {
    /**
     * @param {number[]} nums
     * @return {number[][]}
     */
    subsets(nums) {
        const subsets = [];
        const curset = [];
    
        function helper(i, nums, curset, subsets) {
            // If out of bounds, add current subset to result
            if (i >= nums.length) {
                subsets.push([...curset]); // Create a copy of curset
                return;
            }
            
            // Include nums[i]
            curset.push(nums[i]);
            helper(i + 1, nums, curset, subsets);
            curset.pop(); // Backtrack
            
            // Exclude nums[i]
            helper(i + 1, nums, curset, subsets);
        }
    
        helper(0, nums, curset, subsets);
        return subsets;
    }
}

