class Solution {
    /**
     * @param {number[][]} matrix
     * @param {number} target
     * @return {boolean}
     */
    searchMatrix(matrix, target) {

        for (let i = 0; i < matrix.length; i++) {
        // do binary search for each row
        let left = 0;
        let right = matrix[i].length - 1;

        while (left <= right) {
            let middle = Math.floor((right + left) / 2);
            if (target > matrix[i][middle]) {
                left = middle + 1;
            } else if (target < matrix[i][middle]) {
                right = middle - 1;
            } else {
                return true;
            }
        }
    }
    return false;



    }
}
