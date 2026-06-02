# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def inorderTraversal(self, root: Optional[TreeNode]) -> List[int]:

        arr = [] 

        def inOrder(node):
            if not node: 
                return 
        
            # go left 
            inOrder(node.left)
            # append 
            arr.append(node.val)
            # go right 
            inOrder(node.right)

        inOrder(root)
        return arr
        