class Solution {
    /**
     * @param {string} s
     * @return {boolean}
     */
    isPalindrome(s) {
          // 1. Normalize: lowercase, then remove all non-alphanumeric characters
        const finalString = s
            .toLowerCase()
            .replace(/[^a-z0-9]/g, "");

        // 2. Check palindrome by comparing with its reverse
        const reversed = finalString.split("").reverse().join("");

        return finalString === reversed;


    }
}
