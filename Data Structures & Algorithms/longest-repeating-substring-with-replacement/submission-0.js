class Solution {
    /**
     * @param {string} s
     * @param {number} k
     * @return {number}
     */
    characterReplacement(s, k) {
        let arr_s = s.split('');
        let count = new Map(); // for frequencies
        let left = 0;
        let result = 0;
        let maxf = 0;

        for (let r = 0; r < arr_s.length; r++) {
            // count the frequency
            count.set(arr_s[r], (count.get(arr_s[r]) || 0) + 1);

            // calculate max frequency
            maxf = Math.max(maxf, count.get(arr_s[r]));

            // while the window is invalid
            while ((r - left + 1) - maxf > k) {
                count.set(arr_s[left], count.get(arr_s[left]) - 1);
                // update left pointer
                left++;
            }
            // get the result
            result = Math.max(result, r - left + 1);
        }
        return result;
    }
}
