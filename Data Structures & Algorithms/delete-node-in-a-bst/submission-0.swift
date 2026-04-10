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

    func findMinNode(_ root: TreeNode?) -> TreeNode?{
        var curr = root
        while curr != nil && curr?.left != nil {
            curr = curr?.left
        }
        return curr 
    }


    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        // base case 
        guard let root = root else{
            // no root, no tree
            return nil
        }

        // search 
        if key < root.val {
            root.left = deleteNode(root.left, key)
        }else if key > root.val {
            root.right = deleteNode(root.right, key)
        }

        // we found it! 
        else{
            // case 1 and 0 
            // if nil on either side
            if root.left == nil {
                return root.right
            }else if root.right == nil {
                return root.left
            }else{
                // two children 
                let minNode = findMinNode(root.right)
                // replace value 
                root.val = minNode!.val
                // delete extra node 
                root.right = deleteNode(root.right, minNode!.val)
            }

        }

        return root 
    }
}
