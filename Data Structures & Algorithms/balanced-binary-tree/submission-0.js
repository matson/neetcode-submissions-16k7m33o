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
     * @return {boolean}
     */
    isBalanced(root) {
          function dfs(root) {
        // Base case: empty tree is balanced, height 0
        if (!root) {
            return { isBalanced: true, height: 0 };
        }
        
        // Recurse on left and right subtrees
        const left = dfs(root.left);
        const right = dfs(root.right);
        
        // Node is balanced if left and right are balanced and height difference <= 1
        const balanced = left.isBalanced && right.isBalanced && Math.abs(left.height - right.height) <= 1;
        return { isBalanced: balanced, height: 1 + Math.max(left.height, right.height) };
    }
    
    return dfs(root).isBalanced;
    }
}
