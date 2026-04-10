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
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        // left 
        // print node
        // right 
        var result: [Int] = [] 

        func inOrder(_ node: TreeNode?){
             guard let node = node else {
                return
             }
    
            // left 
            inOrder(node.left)
            result.append(node.val)
            // right 
            inOrder(node.right)
        }
        inOrder(root)
        return result 

    }
}
