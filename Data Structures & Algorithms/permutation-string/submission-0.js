class Solution {
    /**
     * @param {string} s1
     * @param {string} s2
     * @return {boolean}
     */
    checkInclusion(s1, s2) {
        let sorted1 = s1.split('').sort().join('');
        let arr_s = s2.split('');

        for (let i = 0; i < arr_s.length; i++) {
            for (let j = i; j < arr_s.length; j++) {
                let subString = arr_s.slice(i, j + 1).sort().join('');
                if (subString === sorted1) {
                    return true;
                }
            }
        }
        return false;
    }
}
