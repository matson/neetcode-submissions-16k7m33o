class Solution {
    /**
     * @param {number[]} nums
     * @return {number[][]}
     */
    threeSum(nums) {
        const res = [];
        nums.sort((a, b) => a - b);              // sort the input array
        const n = nums.length;

        for (let i = 0; i < n; i++) {
            const a = nums[i];
            if (a > 0) break;                       // no possible triplets beyond this
            if (i > 0 && a === nums[i - 1]) continue;   // skip duplicate `a`

            let l = i + 1, r = n - 1;
            while (l < r) {
            const sum = a + nums[l] + nums[r];
            if (sum > 0) {
                r--;
            } else if (sum < 0) {
                l++;
            } else {
                res.push([a, nums[l], nums[r]]);
                l++;
                r--;
                // skip duplicate elements at the `l` side
                while (l < r && nums[l] === nums[l - 1]) {
                l++;
                }
            }
            }
        }

        return res;

    }
}
