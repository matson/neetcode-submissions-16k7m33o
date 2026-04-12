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
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
            
        guard let root = root else {
            return false
        }
        
        let remaining = targetSum - root.val
        
        if root.left == nil && root.right == nil{
            if remaining == 0{
                return true
            }
        }
        
        if hasPathSum(root.left, remaining){
            return true
        }
        
        if hasPathSum(root.right, remaining){
            return true
        }
        
        return false
    }
}
