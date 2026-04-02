class Solution {
    /**
     * @param {string} s
     * @return {number}
     */
    lengthOfLongestSubstring(s) {
        
        let arr_s = s.split('');
        let set = new Set();
        let left = 0;
        let maxLength = 0;

        for (let r = 0; r < arr_s.length; r++) {
            while (set.has(arr_s[r])) {
                set.delete(arr_s[left]);
                left++;
            }
            set.add(arr_s[r]);
            maxLength = Math.max(maxLength, r - left + 1);
        }
        
        return maxLength;

    }
}
