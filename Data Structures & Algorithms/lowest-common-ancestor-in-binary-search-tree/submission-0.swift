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
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        


        // compare p and q values to root
        if min(p!.val, q!.val) > root!.val {
            return lowestCommonAncestor(root!.right, p, q)
        }else if max(p!.val, q!.val) < root!.val {
            return lowestCommonAncestor(root?.left, p, q)
        }else{
            return root
        }
    }
}
