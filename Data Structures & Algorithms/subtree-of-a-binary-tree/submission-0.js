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
     * @param {TreeNode} subRoot
     * @return {boolean}
     */
 
        isSubtree(root, subRoot) {
          // If subRoot is null, it's a subtree of any tree
        if (subRoot === null) {
            return true;
        }
        // If root is null but subRoot is not, subRoot cannot be a subtree
        if (root === null) {
            return false;
        }
        // Run same tree check
        if (this.isSameTree(root, subRoot)) {
            return true;
        }
        // Check left and right subtrees
        return (this.isSubtree(root.left, subRoot) || this.isSubtree(root.right, subRoot));
    }

    isSameTree(t1, t2) {
        // If both are null, trees are identical
        if (t1 === null && t2 === null) {
            return true;
        }
        // If both are non-null and values match, check subtrees
        if (t1 !== null && t2 !== null && t1.val === t2.val) {
            // Check left and right subtrees
            return (this.isSameTree(t1.left, t2.left) && this.isSameTree(t1.right, t2.right));
        }
        // If one tree is empty, not identical
        return false;
    }
}
