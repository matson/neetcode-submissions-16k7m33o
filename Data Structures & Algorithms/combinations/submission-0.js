class Solution {
    /**
     * @param {number} n
     * @param {number} k
     * @return {number[][]}
     */
    combine(n, k) {
         const combos = [];
    const curset = [];
    
    function helper(i, combos, curset, n, k) {
        // Base case: if curset has k elements, add to combos
        if (curset.length === k) {
            combos.push([...curset]); // Create a copy of curset
            return;
        }
        
        // Base case: if out of bounds
        if (i > n) {
            return;
        }
        
        // Include i
        curset.push(i);
        helper(i + 1, combos, curset, n, k);
        curset.pop(); // Backtrack
        
        // Exclude i
        helper(i + 1, combos, curset, n, k);
    }
    
    helper(1, combos, curset, n, k);
    return combos;

    }
}