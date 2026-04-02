class Solution {
    /**
     * @param {number[]} nums
     * @return {number[]}
     */
    productExceptSelf(nums) {
        const result = [];
        const zeroCount = nums.filter(n => n === 0).length;

        // Compute total product of all non-zero elements
        const totalProduct = nums.reduce((acc, cur) => {
            return cur === 0 ? acc : acc * cur;
        }, 1);

        for (let i = 0; i < nums.length; i++) {
            if (zeroCount >= 2) {
            // If two or more zeros, all outputs are zero
            result.push(0);
            } else if (zeroCount === 1) {
            // If exactly one zero, that position gets product; others are zero
            result.push(nums[i] === 0 ? totalProduct : 0);
            } else {
            // No zeros: divide total product by the current element
            result.push(totalProduct / nums[i]);
            }
        }

        return result;
    }
}
