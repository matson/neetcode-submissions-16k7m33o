class Solution {
    /**
     * @param {string} s
     * @param {string} t
     * @return {boolean}
     */
    isAnagram(s, t) {
        
        if (s.length !== t.length) return false;

        const dict1 = {};
        const dict2 = {};

        for (const char of s) {
            dict1[char] = (dict1[char] || 0) + 1;
        }

        for (const char of t) {
            dict2[char] = (dict2[char] || 0) + 1;
        }

        for (const key in dict1) {
            if (dict1[key] !== dict2[key]) {
                return false;
            }
        }

        return true;
    }
}
