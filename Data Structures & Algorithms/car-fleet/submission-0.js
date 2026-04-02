class Solution {
    /**
     * @param {number} target
     * @param {number[]} position
     * @param {number[]} speed
     * @return {number}
     */
    carFleet(target, position, speed) {
        let stack = [];
        let pair = position.map((p, i) => [p, speed[i]]); // make a pair of position and speed
        pair.sort((a, b) => b[0] - a[0]); // sort in descending order by position

        // iterate in reverse order
        for (let [p, s] of pair) {
            // calculate time
            stack.push((target - p) / s); // target - position / speed
            if (stack.length >= 2 && stack[stack.length - 1] <= stack[stack.length - 2]) {
                stack.pop();
            }
        }
        return stack.length;
    }
}
