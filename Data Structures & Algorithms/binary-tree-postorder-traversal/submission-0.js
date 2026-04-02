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
     * @return {number[]}
     */
    postorderTraversal(root) {
             const arr = [];
    
    function postOrder(root) {
        if (!root) {
            return;
        }
        postOrder(root.left);   // Traverse left subtree
        postOrder(root.right);  // Traverse right subtree
        arr.push(root.val);     // Append root value last
    }
    
    postOrder(root);
    return arr;
    }
}
