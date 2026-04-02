class Solution {
    /**
     * @param {number[]} nums
     * @return {number}
     */
    findMin(nums) {
        let left = 0;
        let right = nums.length - 1;
        let result = nums[left];
        
        while (left <= right) {
            // If the array is sorted
            if (nums[left] < nums[right]) {
                result = Math.min(result, nums[left]);
                break;
            }
            
            let middle = Math.floor((right + left) / 2);
            result = Math.min(result, nums[middle]);
            
            // Left sorted portion
            if (nums[middle] >= nums[left]) {
                left = middle + 1;
            } else {
                // Right sorted portion
                right = middle - 1;
            }
        }
        
        return result;
    }
}
