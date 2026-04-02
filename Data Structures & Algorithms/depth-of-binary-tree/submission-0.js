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
     * @return {number}
     */
    maxDepth(root) {
        if (root == null) {
            return 0;
        }

        // Recursively compute the depths of the left and right subtrees
        const leftDepth = this.maxDepth(root.left);
        const rightDepth = this.maxDepth(root.right);

        // The maximum depth is the greater of these two, plus one for the current node
        return Math.max(leftDepth, rightDepth) + 1;
    }
}
