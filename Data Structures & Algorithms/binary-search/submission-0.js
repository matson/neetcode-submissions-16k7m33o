class Solution {
    /**
     * @param {number[]} nums
     * @param {number} target
     * @return {number}
     */
    search(nums, target) {

        let right = nums.length - 1; // right
        let left = 0; // left

        while (left <= right) {
            let middle = Math.floor((right + left) / 2); // middle
            // if value is less than target
            if (target > nums[middle]) {
                left = middle + 1;
            } else if (target < nums[middle]) {
                right = middle - 1;
            } else {
                return middle;
            }
        }
        return -1;
    }
}
