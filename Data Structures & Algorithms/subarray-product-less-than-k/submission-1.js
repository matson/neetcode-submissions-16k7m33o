class Solution {
    /**
     * @param {number[]} nums
     * @param {number} k
     * @return {number}
     */
    numSubarrayProductLessThanK(nums, k) {
        if (k <= 1) return 0;

        let left = 0;
        let product = 1;
        let count = 0;

        for (let right = 0; right < nums.length; right++) {
            product *= nums[right];

            // shrink window until product < k
            while (product >= k) {
                product /= nums[left];
                left++;
            }

            // number of valid subarrays ending at `right`
            count += (right - left + 1);
        }

        return count;
    }
}
