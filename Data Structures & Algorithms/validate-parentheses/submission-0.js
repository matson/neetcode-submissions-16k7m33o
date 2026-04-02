class Solution {
    /**
     * @param {string} s
     * @return {boolean}
     */
    isValid(s) {
        const dict = { ')': '(', ']': '[', '}': '{' };
        let stack = [];

        for (let char of s) {
            // if there is a closing
            if (dict[char]) {
                if (stack.length && stack[stack.length - 1] === dict[char]) {
                    stack.pop();
                } else {
                    return false;
                }
            } else {
                stack.push(char);
            }
        }

        return stack.length === 0;
    }
}
