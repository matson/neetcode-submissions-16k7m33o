/**
 * Forward declaration of guess API.
 * @param {number} num   your guess
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0
 * function guess(num) {}
 */

class Solution {
    /**
     * @param {number} n
     * @return {number}
     */
    guessNumber(n) {

    let low = 1;
    let high = n;

    while (true) {
        let middle = Math.floor((low + high) / 2);
        // if > 0
        let res = guess(middle);
        if (res > 0) {
            low = middle + 1;
        } else if (res < 0) {
            high = middle - 1;
        } else {
            return middle;
        }
    }
    return -1;
    }
}
