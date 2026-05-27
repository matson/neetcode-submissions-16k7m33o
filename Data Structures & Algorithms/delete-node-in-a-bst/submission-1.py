# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def findMin(self, root):
        curr = root
        while curr and curr.left:
            curr = curr.left

        return curr
    def deleteNode(self, root: Optional[TreeNode], key: int) -> Optional[TreeNode]:
        # base 
        if not root: 
            return None 
        
        # search 
        if key > root.val:
            root.right = self.deleteNode(root.right, key)
        elif key < root.val:
            root.left = self.deleteNode(root.left, key)
        # found it
        else:
            # case 1 or 0 
            if not root.right:
                return root.left 
            elif not root.left:
                return root.right
            else:
            # case 2
                minNode = self.findMin(root.right)
                root.val = minNode.val
                root.right = self.deleteNode(root.right, minNode.val)
        return root 

    

        