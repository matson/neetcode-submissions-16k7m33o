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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        // traverse it BFS? 
            guard let root = root else{
            return nil
            }
        
        // trading right to left, left to right - base case
        // swap the nodes
        let tmp = root.left
        root.left = root.right
        root.right = tmp
        
        // recursion right subtree - left subtree
        invertTree(root.left)
        invertTree(root.right)
        
        return root
        }
}
