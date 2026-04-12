/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else{
            // no root - 0 depth
            return 0
        }
        
        // we get the max depth of the right and left subrees
        var maxRight = maxDepth(root.right)
        var maxLeft = maxDepth(root.left)
        
        // add root 
        return max(maxLeft, maxRight) + 1
    }
}
