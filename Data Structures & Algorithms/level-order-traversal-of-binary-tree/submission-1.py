# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right

from collections import deque 

class Solution:
    def levelOrder(self, root: Optional[TreeNode]) -> List[List[int]]:
        
        result = [] 
        # no root - empty list 
        if not root: 
            return result

        queue = deque() 

        # add root 
        if root: 
            queue.append(root)

        while len(queue) > 0:
            level = []
            for i in range(len(queue)):
                current = queue.popleft()
                level.append(current.val)
                if current.left:
                    # add to queue
                    queue.append(current.left)
                if current.right:
                    queue.append(current.right)
            # append to result
            result.append(level)
        return result 



        