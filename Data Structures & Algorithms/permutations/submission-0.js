class Solution {
    /**
     * @param {number[]} nums
     * @return {number[][]}
     */
    permute(nums) {
        let perms = [[]]; // Initialize with empty permutation
    
    for (let n of nums) {
        // For each number in the array
        let nextPerms = [];
        for (let p of perms) {
            for (let i = 0; i <= p.length; i++) {
                let pCopy = [...p]; // Create a copy of p
                pCopy.splice(i, 0, n); // Insert n at index i
                nextPerms.push(pCopy);
            }
        }
        perms = nextPerms;
    }
    return perms;
    }
}
