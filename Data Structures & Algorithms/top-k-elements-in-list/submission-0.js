class Solution {
    /**
     * @param {number[]} nums
     * @param {number} k
     * @return {number[]}
     */
    topKFrequent(nums, k) {
         // 1. Build frequency dictionary
        const freq = {};
        for (let i = 0; i < nums.length; i++) {
            const num = nums[i];
            freq[num] = (freq[num] || 0) + 1;
        }

        // 2. Convert freq object to an array of [num, count] arrays
        const entries = Object.entries(freq);
        // 👇 sort descending by count
        entries.sort((a, b) => b[1] - a[1]);

        // 3. Extract the top k numbers
        const result = [];
        for (let i = 0; i < k; i++) {
            result.push(Number(entries[i][0]));
        }

        return result;


    }
}
