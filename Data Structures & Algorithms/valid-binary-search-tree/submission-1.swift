/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int)https://neetcode.io/$0 {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        func valid(_ node: TreeNode?, _ min: Int, _ max: Int) -> Bool {
            guard let node = node else{
                return true
            }
            
            if !(node.val < max && node.val > min) {
                return false
            }
            return (valid(node.left, min, node.val) && valid(node.right, node.val, max))
        
         }
     return valid(root, Int.min, Int.max)
    }
}
