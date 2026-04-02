class Solution {
    /**
     * @param {number[]} nums
     * @return {number}
     */
    longestConsecutive(nums) {
          // Remove duplicates and sort
        const set = new Set(nums);
        const sorted = Array.from(set).sort((a, b) => a - b);

        if (sorted.length === 0) return 0;

        let length = 1;
        let maxLen = 1;

        for (let i = 0; i < sorted.length - 1; i++) {
            if (sorted[i + 1] - sorted[i] === 1) {
            length += 1;
            } else {
            // Reset on gaps larger than 1
            length = 1;
            }
            if (length > maxLen) {
            maxLen = length;
            }
        }

        return maxLen;

    }
}
