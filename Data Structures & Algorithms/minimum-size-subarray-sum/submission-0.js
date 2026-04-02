class Solution {
    /**
     * @param {number} target
     * @param {number[]} nums
     * @return {number}
     */
    minSubArrayLen(target, nums) {
        let left = 0;
        let sum = 0;
        let minLength = nums.length + 1;

        for (let right = 0; right < nums.length; right++) {
            sum += nums[right];

            while (sum >= target) {
            // update the minimum length found
            minLength = Math.min(minLength, right - left + 1);
            sum -= nums[left];
            left++;
            }
        }

        return minLength === nums.length + 1 ? 0 : minLength;

    }
}
