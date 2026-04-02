/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     constructor(val = 0, left = null, right = null) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */

class Solution {
    /**
     * @param {TreeNode} root
     * @return {number[][]}
     */
    levelOrder(root) {
         const result = [];
    const queue = [];
    
    // If root exists, add to queue
    if (root) {
        queue.push(root);
    }
    
    // While queue is not empty
    while (queue.length > 0) {
        const level = [];
        const levelSize = queue.length; // Store size before processing
        for (let i = 0; i < levelSize; i++) {
            const current = queue.shift(); // Remove first node
            level.push(current.val); // Add value to current level
            if (current.left) {
                queue.push(current.left); // Add left child
            }
            if (current.right) {
                queue.push(current.right); // Add right child
            }
        }
        // If level is not empty, add to result
        if (level.length > 0) {
            result.push(level);
        }
    }
    
    return result;
    }
}
