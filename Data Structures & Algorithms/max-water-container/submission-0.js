class Solution {
    /**
     * @param {number[]} heights
     * @return {number}
     */
    maxArea(heights) {

        let maxArea = 0;
        const n = heights.length;

        for (let i = 0; i < n; i++) {
            for (let j = i + 1; j < n; j++) {
            const height = Math.min(heights[i], heights[j]);
            const width = j - i;
            const area = height * width;
            maxArea = Math.max(maxArea, area);
            }
        }

        return maxArea;


    }
}
